Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 140FD2E82AA
	for <lists+blinux-list@lfdr.de>; Fri,  1 Jan 2021 00:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609458139;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VDSgv1HC3kh8HeUgF1gGeM2Scp1dN55s2PP+RVyMKpI=;
	b=VkF0jAP6p2ZKUymqffGlWO08qfUEO0Xk3QlHwasrpMU81Ntat+JTPIsSflyirzOB/7EC1l
	s8DGvYB/jEtNK4qQuN85cBTUpjzOfqZF70W3jHja8Ian0Bgxgtc12ulD4t0EZwK/lZiOws
	WN3hhgoJfEI4GRecHgeKZMYdw2+unv0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-521-NWOhKZMtPBuRPKsG4eFqyA-1; Thu, 31 Dec 2020 18:42:16 -0500
X-MC-Unique: NWOhKZMtPBuRPKsG4eFqyA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A8E7B800D55;
	Thu, 31 Dec 2020 23:42:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29AB05D9DE;
	Thu, 31 Dec 2020 23:42:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 448BA18095C9;
	Thu, 31 Dec 2020 23:42:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BVNftLJ001355 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 31 Dec 2020 18:41:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D90B36F9D6; Thu, 31 Dec 2020 23:41:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3AC96F9C6
	for <blinux-list@redhat.com>; Thu, 31 Dec 2020 23:41:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 188C8185A794
	for <blinux-list@redhat.com>; Thu, 31 Dec 2020 23:41:52 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-491-WSzdWfBvPDCfzwFUnYLd0Q-1; Thu, 31 Dec 2020 18:41:44 -0500
X-MC-Unique: WSzdWfBvPDCfzwFUnYLd0Q-1
Received: from rednote.net (localhost [IPv6:::1])
	by mail.rednote.net (Postfix) with ESMTPS id D8B7FFA240
	for <blinux-list@redhat.com>; Thu, 31 Dec 2020 18:41:42 -0500 (EST)
Received: (from janina@localhost)
	by rednote.net (8.16.1/8.16.1/Submit) id 0BVNfgxk352469
	for blinux-list@redhat.com; Thu, 31 Dec 2020 18:41:42 -0500
Date: Thu, 31 Dec 2020 18:41:42 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Remote Desktop Under Linux
Message-ID: <20201231234142.GA5255@rednote.net>
References: <2e9e01d6dfbf$56add9f0$04098dd0$@kellford.com>
	<20201231163535.72cc6332@bigbox.attlocal.net>
MIME-Version: 1.0
In-Reply-To: <20201231163535.72cc6332@bigbox.attlocal.net>
X-Operating-System: Linux opera.rednote.net 5.9.15-200.fc33.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am unfamiliar with RDP. However, I believe the 'ssh -x' approach onlyh
conveys the graphics, not any audio associated with screen reading.

Best,

Janina

Linux for blind general discussion writes:
> Tim here.  There are multiple ways to do remote access of which
> Remote Desktop (RDP) is only one of them.  I've never tried to use
> RDP to serve my Linux/BSD machines' GUI to another (Windows or
> otherwise) machine.  However, I can confirm that if you're sitting at
> the Linux/BSD machine, you can use RDP to access a remote Windows
> machine.  However, accessibility may vary if you need access to
> underlying accessibility data that a screen-reader might use.
> 
> For accessing a Linux/BSD machine's GUI from another machine, the two
> most common ways I've encountered are to use VNC or to forward the X
> protocol.  For the former, you'd install something like the
> "tightvncserver" package on the Linux machine and install a VNC
> viewer on your local machine.  You can then connect to it from your
> local machine.  Note that this might leave your VNC/GUI login prompt
> up for others to hammer on, so I'd either enable it via SSH manually
> as-needed, or set up a secure tunnel (either a SSH tunnel or a VPN
> tunnel) to the machine and ensure that VNC only listens on localhost.
> 
> In a similar fashion, if you have a local X server, you can use ssh's
> "-X" parameter tunnel to the remote machine and open windows on your
> local machine desktop. For example, issuing
> 
>   local$ ssh -X user@remote.example.com
> 
> creates a virtual X connection on the remote server, and then when
> SSH'ed into that machine, I can launch programs there that display
> locally such as:
> 
>   user@remote$ xcalc
> 
> Again, accessibility for either of them may be limited to the
> graphics, so a screen-reader might face difficulty.  But a
> screen-magnifier should still be of assistance.
> 
> Hope this helps,
> 
> -tim
> 
> 
> 
> On December 31, 2020, Linux for blind general discussion wrote:
> > Hi,
> > 
> >  
> > 
> > I have my ssh access and local GUI desktop working for my Linux
> > machine quite well.  I also have ssh access to a Linux machine on
> > the Microsoft Azure service working.
> > 
> >  
> > 
> > Before I go down the path of trying to get remote desktop access to
> > the GUI, does this actually work.
> > 
> >  
> > 
> > The article at Linux - Microsoft Azure
> > <https://portal.azure.com/#@kellykellford.onmicrosoft.com/resource/subscript
> > ions/968d4c66-18eb-48df-87b5-6d1918a03749/resourceGroups/linux/providers/Mic
> > rosoft.Compute/virtualMachines/linux/connect>  has details on what
> > you need to do to connect to the GUI for a machine running on
> > Azure.  I am hoping to use the Windows RDP client to connect and
> > just get the Gnome audio.  I know it won't be perfect.
> > 
> >  
> > 
> > If this does actually work, does anyone know the syntax to tell the
> > XRDP service on the Linux machine to use Gnome as the desktop
> > session?  The article shows this command but it is for a different
> > desktop.
> > 
> >  
> > 
> > Tell xrdp what desktop environment to use when you start your
> > session. Configure xrdp to use xfce as your desktop environment as
> > follows:
> > 
> >  
> > 
> > echo xfce4-session >~/.xsession
> > 
> > Restart the xrdp service for the changes to take effect as follows:
> > 
> > sudo service xrdp restart
> > 
> >  
> > 
> > Also, thanks for the answers to my other questions here.  I haven't
> > contributed much here but will offer one tidbit, on the off chance
> > anyone here is trying to use Microsoft Teams on Linux.  You have to
> > start the Linux version of Teams with the additional command line of
> > -force-renderer-accessibility.  This instructs Chrome and software
> > using Chromium, to ensure things go through the accessibility API.
> > If you don't, Orca won't read anything when Teams loads.  If you do
> > add this, Teams works fairly similar to how it does on other
> > platforms.
> > 
> >  
> > 
> > I know I do not post here often so in full disclosure, my day job
> > is working for Microsoft running  a service known as the enterprise
> > Disability Answer Desk that works to resolve accessibility issues
> > for business, government, education and other enterprise customers.
> >  I've wanted to understand how our technology works on Linux, where
> > we have it available.
> > 
> >  
> > 
> > Kelly
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> > 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

