Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 720EE2E8298
	for <lists+blinux-list@lfdr.de>; Thu, 31 Dec 2020 23:59:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609455579;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MhFhBYR0ht9XS6MqJEKFILkN4pz0aT5eKgoyx7QRel0=;
	b=i5A5Uoh27kVWxjV1gpGbVHUJf7gKgT7QfYNwQR0S5PqP0Rbqhb3BqWXJHWLkWZNBFN332g
	g9Oi6DSR3HlndAF8CLaFXCzCiF/9g1kSgi/INzeaDhEJ00l1B9LV1HZCQN9mWDbpVRIpHV
	KQbjDcG9UwbWqiSPInwW34MDopmZEks=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-10-nhnm-_voO0CaqMGslYVraQ-1; Thu, 31 Dec 2020 17:59:37 -0500
X-MC-Unique: nhnm-_voO0CaqMGslYVraQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 098E410054FF;
	Thu, 31 Dec 2020 22:59:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 09A975D6BA;
	Thu, 31 Dec 2020 22:59:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 608DB4BB7B;
	Thu, 31 Dec 2020 22:59:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BVMxJTb029909 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 31 Dec 2020 17:59:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E447D4ACB; Thu, 31 Dec 2020 22:59:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD5567D297
	for <blinux-list@redhat.com>; Thu, 31 Dec 2020 22:59:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3504811E76
	for <blinux-list@redhat.com>; Thu, 31 Dec 2020 22:59:14 +0000 (UTC)
Received: from gateway1.unifiedlayer.com (gateway1.unifiedlayer.com
	[67.222.54.55]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-580-XJaJ09oWMSSa4st_K3LUkQ-1; Thu, 31 Dec 2020 17:59:12 -0500
X-MC-Unique: XJaJ09oWMSSa4st_K3LUkQ-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway1.unifiedlayer.com (Postfix) with ESMTP id EEE43200E2006
	for <blinux-list@redhat.com>; Thu, 31 Dec 2020 16:35:36 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id v6XgkODPu89aTv6XgkMz7M; Thu, 31 Dec 2020 16:35:36 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:29524 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1kv6Xg-000FN0-It
	for blinux-list@redhat.com; Thu, 31 Dec 2020 16:35:36 -0600
Date: Thu, 31 Dec 2020 16:35:35 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Remote Desktop Under Linux
Message-ID: <20201231163535.72cc6332@bigbox.attlocal.net>
In-Reply-To: <2e9e01d6dfbf$56add9f0$04098dd0$@kellford.com>
References: <2e9e01d6dfbf$56add9f0$04098dd0$@kellford.com>
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
X-Exim-ID: 1kv6Xg-000FN0-It
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:29524
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  There are multiple ways to do remote access of which
Remote Desktop (RDP) is only one of them.  I've never tried to use
RDP to serve my Linux/BSD machines' GUI to another (Windows or
otherwise) machine.  However, I can confirm that if you're sitting at
the Linux/BSD machine, you can use RDP to access a remote Windows
machine.  However, accessibility may vary if you need access to
underlying accessibility data that a screen-reader might use.

For accessing a Linux/BSD machine's GUI from another machine, the two
most common ways I've encountered are to use VNC or to forward the X
protocol.  For the former, you'd install something like the
"tightvncserver" package on the Linux machine and install a VNC
viewer on your local machine.  You can then connect to it from your
local machine.  Note that this might leave your VNC/GUI login prompt
up for others to hammer on, so I'd either enable it via SSH manually
as-needed, or set up a secure tunnel (either a SSH tunnel or a VPN
tunnel) to the machine and ensure that VNC only listens on localhost.

In a similar fashion, if you have a local X server, you can use ssh's
"-X" parameter tunnel to the remote machine and open windows on your
local machine desktop. For example, issuing

  local$ ssh -X user@remote.example.com

creates a virtual X connection on the remote server, and then when
SSH'ed into that machine, I can launch programs there that display
locally such as:

  user@remote$ xcalc

Again, accessibility for either of them may be limited to the
graphics, so a screen-reader might face difficulty.  But a
screen-magnifier should still be of assistance.

Hope this helps,

-tim



On December 31, 2020, Linux for blind general discussion wrote:
> Hi,
> 
>  
> 
> I have my ssh access and local GUI desktop working for my Linux
> machine quite well.  I also have ssh access to a Linux machine on
> the Microsoft Azure service working.
> 
>  
> 
> Before I go down the path of trying to get remote desktop access to
> the GUI, does this actually work.
> 
>  
> 
> The article at Linux - Microsoft Azure
> <https://portal.azure.com/#@kellykellford.onmicrosoft.com/resource/subscript
> ions/968d4c66-18eb-48df-87b5-6d1918a03749/resourceGroups/linux/providers/Mic
> rosoft.Compute/virtualMachines/linux/connect>  has details on what
> you need to do to connect to the GUI for a machine running on
> Azure.  I am hoping to use the Windows RDP client to connect and
> just get the Gnome audio.  I know it won't be perfect.
> 
>  
> 
> If this does actually work, does anyone know the syntax to tell the
> XRDP service on the Linux machine to use Gnome as the desktop
> session?  The article shows this command but it is for a different
> desktop.
> 
>  
> 
> Tell xrdp what desktop environment to use when you start your
> session. Configure xrdp to use xfce as your desktop environment as
> follows:
> 
>  
> 
> echo xfce4-session >~/.xsession
> 
> Restart the xrdp service for the changes to take effect as follows:
> 
> sudo service xrdp restart
> 
>  
> 
> Also, thanks for the answers to my other questions here.  I haven't
> contributed much here but will offer one tidbit, on the off chance
> anyone here is trying to use Microsoft Teams on Linux.  You have to
> start the Linux version of Teams with the additional command line of
> -force-renderer-accessibility.  This instructs Chrome and software
> using Chromium, to ensure things go through the accessibility API.
> If you don't, Orca won't read anything when Teams loads.  If you do
> add this, Teams works fairly similar to how it does on other
> platforms.
> 
>  
> 
> I know I do not post here often so in full disclosure, my day job
> is working for Microsoft running  a service known as the enterprise
> Disability Answer Desk that works to resolve accessibility issues
> for business, government, education and other enterprise customers.
>  I've wanted to understand how our technology works on Linux, where
> we have it available.
> 
>  
> 
> Kelly
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

