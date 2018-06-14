#!/usr/bin/python

# source: <http://docs.astropy.org/en/stable/generated/examples/coordinates/plot_galactocentric-frame.html#sphx-glr-generated-examples-coordinates-plot-galactocentric-frame-py>

# dependences
	# pip install astropy matplotlib numpy
	# apt-get install python-tk 

# Make print work the same in all versions of Python, set up numpy, matplotlib, and use a nicer set of plot parameters:
import numpy as np
import matplotlib.pyplot as plt
from astropy.visualization import astropy_mpl_style
plt.style.use(astropy_mpl_style)

# Import the necessary astropy subpackages
import astropy.coordinates as coord
import astropy.units as u

c1 = coord.ICRS(ra=89.014303*u.degree, dec=13.924912*u.degree,
                distance=(37.59*u.mas).to(u.pc, u.parallax()),
                pm_ra_cosdec=372.72*u.mas/u.yr,
                pm_dec=-483.69*u.mas/u.yr,
                radial_velocity=0.37*u.km/u.s)

# To use the Astropy default solar position and motion parameters, we can simply do:
gc1 = c1.transform_to(coord.Galactocentric)

# From here, we can access the components of the resulting Galactocentric instance to see the 3D Cartesian velocity components:
print(gc1.v_x, gc1.v_y, gc1.v_z)
v_sun = coord.CartesianDifferential([11.1, 244, 7.25]*u.km/u.s)
gc_frame = coord.Galactocentric(galcen_distance=8*u.kpc,
                                galcen_v_sun=v_sun,
                                z_sun=0*u.pc)

# We can then transform to this frame instead, with our custom parameters:
gc2 = c1.transform_to(gc_frame)
print(gc2.v_x, gc2.v_y, gc2.v_z)

galcen_distance = 8*u.kpc
pm_gal_sgrA = [-6.379, -0.202] * u.mas/u.yr # from Reid & Brunthaler 2004
vy, vz = -(galcen_distance * pm_gal_sgrA).to(u.km/u.s, u.dimensionless_angles())

# We still have to assume a line-of-sight velocity for the Galactic center, which we will again take to be 11 km/s:
vx = 11.1 * u.km/u.s

gc_frame2 = coord.Galactocentric(galcen_distance=galcen_distance,
                                 galcen_v_sun=coord.CartesianDifferential(vx, vy, vz),
                                 z_sun=0*u.pc)
gc3 = c1.transform_to(gc_frame2)
print(gc3.v_x, gc3.v_y, gc3.v_z)

ring_distances = np.arange(10, 25+1, 5) * u.kpc
circ_velocity = 220 * u.km/u.s

phi_grid = np.linspace(90, 270, 512) * u.degree # grid of azimuths
ring_rep = coord.CylindricalRepresentation(
    rho=ring_distances[:,np.newaxis],
    phi=phi_grid[np.newaxis],
    z=np.zeros_like(ring_distances)[:,np.newaxis])

angular_velocity = (-circ_velocity / ring_distances).to(u.mas/u.yr,
                                                        u.dimensionless_angles())
ring_dif = coord.CylindricalDifferential(
    d_rho=np.zeros(phi_grid.shape)[np.newaxis]*u.km/u.s,
    d_phi=angular_velocity[:,np.newaxis],
    d_z=np.zeros(phi_grid.shape)[np.newaxis]*u.km/u.s
)

ring_rep = ring_rep.with_differentials(ring_dif)
gc_rings = coord.Galactocentric(ring_rep)

fig,axes = plt.subplots(1, 2, figsize=(12,6))

# Positions
axes[0].plot(gc_rings.x.T, gc_rings.y.T, marker='None', linewidth=3)
axes[0].text(-8., 0, r'$\odot$', fontsize=20)

axes[0].set_xlim(-30, 30)
axes[0].set_ylim(-30, 30)

axes[0].set_xlabel('$x$ [kpc]')
axes[0].set_ylabel('$y$ [kpc]')

# Velocities
axes[1].plot(gc_rings.v_x.T, gc_rings.v_y.T, marker='None', linewidth=3)

axes[1].set_xlim(-250, 250)
axes[1].set_ylim(-250, 250)

axes[1].set_xlabel('$v_x$ [{0}]'.format((u.km/u.s).to_string("latex_inline")))
axes[1].set_ylabel('$v_y$ [{0}]'.format((u.km/u.s).to_string("latex_inline")))

fig.tight_layout()

gal_rings = gc_rings.transform_to(coord.Galactic)

fig,ax = plt.subplots(1, 1, figsize=(8,6))
for i in range(len(ring_distances)):
    ax.plot(gal_rings[i].l.degree, gal_rings[i].pm_l_cosb.value,
            label=str(ring_distances[i]), marker='None', linewidth=3)

ax.set_xlim(360, 0)

ax.set_xlabel('$l$ [deg]')
ax.set_ylabel(r'$\mu_l \, \cos b$ [{0}]'.format((u.mas/u.yr).to_string('latex_inline')))

ax.legend()