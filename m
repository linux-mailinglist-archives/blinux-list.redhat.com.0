Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id ED214284EA2
	for <lists+blinux-list@lfdr.de>; Tue,  6 Oct 2020 17:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601996910;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lHWkp065jACIiaVzDZlN3ZTfd6pzyx8gXt4f4YinsJ8=;
	b=NDw+bj3sK1k5Na5kYcvjYQc2R4aceRv+6dNC/PzKj79HJpp640lOVhg4m3KjoICcaRtuC1
	wkG8o1elO6zI5+RgraY/xwETvtcvX3nXr/wApeW0Si4BJIuHBff5C+YPrBhlBfPaqZOvNT
	QaBmI50ZaBCrtQouSlJwCVpiBZp4iik=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-85-C8gMfUa2N4KN1DtQ7sTGFg-1; Tue, 06 Oct 2020 11:08:26 -0400
X-MC-Unique: C8gMfUa2N4KN1DtQ7sTGFg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E33F800688;
	Tue,  6 Oct 2020 15:08:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63C0D1A800;
	Tue,  6 Oct 2020 15:08:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5F89B44A7C;
	Tue,  6 Oct 2020 15:08:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 096F8F33014653 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Oct 2020 11:08:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 83BAC202343D; Tue,  6 Oct 2020 15:08:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D9F12024508
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 15:08:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2C64D18AE948
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 15:08:13 +0000 (UTC)
Received: from gateway6.unifiedlayer.com (gateway6.unifiedlayer.com
	[66.147.246.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-432-wR9BfKy1PbqhTSArzfA5PQ-1; Tue, 06 Oct 2020 11:08:10 -0400
X-MC-Unique: wR9BfKy1PbqhTSArzfA5PQ-1
Received: from cm3.websitewelcome.com (unknown [108.167.139.23])
	by gateway6.unifiedlayer.com (Postfix) with ESMTP id A95C52009F493
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 09:44:54 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id PoD0klciOKgzSPoD0k96tV; Tue, 06 Oct 2020 09:44:54 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:59659 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1kPoD0-001v1P-CF
	for blinux-list@redhat.com; Tue, 06 Oct 2020 09:44:54 -0500
Date: Tue, 6 Oct 2020 09:44:52 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: VPN accessibility?
Message-ID: <20201006094452.6cb527d9@bigbox.attlocal.net>
In-Reply-To: <160195898709.6.4515232516938989079.1173897@slmail.me>
References: <160195898709.6.4515232516938989079.1173897@slmail.me>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1kPoD0-001v1P-CF
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:59659
X-Source-Auth: tim@thechases.com
X-Email-Count: 4
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  There are three major VPN options around and most VPN
providers support one or more of them.

1) OpenVPN:  This is the most common, having open-source clients and
servers.  It's a bit annoying to configure, but fairly popular.  Most
of the free and low-cost VPN providers offer this.

2) openconnect:  This is a Cisco technology (which appears to be used
by some other companies too).  The openconnect client is open source
but I don't think the server component is.  This is frequently used
in corporate environments.  This is my least favorite of them.

3) wireguard: this is a new contender.  It's smaller, a lot less
complex, and a lot easier to manually configure if all you want is to
link to machines securely (it doesn't scale quite as nicely to having
hundreds or thousands of VPN clients).

4) while not a complete VPN solution, you can also tunnel certain
ports over SSH which can be a fast way to securely connect without
the hassle of setting up a VPN.  I use this for connecting from home
to a particular service behind the firewall at my day-job.

You don't fully detail what you're trying to connect to a VPN and why.
Reasons might include

- you trust your VPN provider more than you trust your ISP

- you want to make your connection appear as if you are in a
  different location

- you have one or more servers "out there" and want to connect them
  as if they're in a local network

- you have a phone or other mobile device and want to connect it back
  to a more trusted endpoint even if you're on free/public wifi out
  and about

Using a VPN only securely moves the endpoint of your connection to
another location.  My preference is to get a small VPS box (I have
one for my website & mail already) and have it act as my VPN
end-point (either using OpenVPN or WireGuard).  This lets my home
devices or mobile devices appear to be coming from the data-center
housing my VPS, rather than disclosing my home IP.  I like both OVH
and Vultr for a low-end box that can meet these needs for ~$3.50
(USD) per month.

https://us.ovh.com/us/order/vps/?v=3#/vps/build?selection=~(range~'Starter~flavor~'vps-starter-1-2-20~datacenters~(BHS~1)~pricingMode~'default)

https://www.vultr.com/products/cloud-compute/#pricing

(beware that Vultr offers a cheaper IPv6-only server, but you likely
need/want IPv4 too, so don't skimp there)  Digital Ocean and Linode
also offer similar systems though tend to be slightly pricier at
$5/mo.

On the flip side, if you want to secure your mobile while out and
about, you can set up either OpenVPN or WireGuard on your home
machine, forward your router's corresponding ports to your interal
machine, and then have your mobile connect via OpenVPN/WireGuard back
to your home machine to at least give you the same security you'd
otherwise have at home.

Funny, as I'm wrapping up typing this, the most recent Hacker Public
Radio podcast episode was about setting up a free/low-cost VPN

http://hackerpublicradio.org/eps.php?id=3177

just in case you want to give that a listen.

Hopefully this gives you some ideas and helps clarify what you're
asking for.

-tim



On October  6, 2020, Linux for blind general discussion wrote:
> Hi everyone,
> I am about to install Slint for the first time, so if all goes
> well, I should be having my first Linux OS up and running soon.
> There might be unexpected challenges as a newbie, but overall, I
> hope it goes well.I'm looking into VPN options for once I get the
> OS installed. I know some VPN services have free trials, but I'd
> rather just ask you guys which VPN do you think has a fairly
> accessible app once you download it on Linux? Thanks, SL
> _______________________________________________ Blinux-list mailing
> list Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

