Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id DF4E52E82C9
	for <lists+blinux-list@lfdr.de>; Fri,  1 Jan 2021 03:24:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609467888;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gY/cb1QkDMb/Y4UsyGMuSfbFqnm4qGcG4dUT1HsjPMk=;
	b=ggUOXfd3T7S5LCr7y66gg7yWuiMp+ij9MxSQpnuLpcbEzpNyTqRfDvvJWzqmgj1tJZ1fBq
	NokVy2yMTbswv3JBNxEHfd7t+rECW9VxYM3Ozk9ocmpnl+fngSxqazX0Li+Unl7oAxQgKH
	Yql3wFiqk0o8PvzahXJAHFk9rqZymdE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-518-VMY9FanNNbOM5emdLuAKdg-1; Thu, 31 Dec 2020 21:24:46 -0500
X-MC-Unique: VMY9FanNNbOM5emdLuAKdg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18AD8107ACE6;
	Fri,  1 Jan 2021 02:24:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF2EA100164C;
	Fri,  1 Jan 2021 02:24:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 827DC180954D;
	Fri,  1 Jan 2021 02:24:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1012OOx3015465 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 31 Dec 2020 21:24:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 498B29D462; Fri,  1 Jan 2021 02:24:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 43A977D280
	for <blinux-list@redhat.com>; Fri,  1 Jan 2021 02:24:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9AD62185A7BC
	for <blinux-list@redhat.com>; Fri,  1 Jan 2021 02:24:20 +0000 (UTC)
Received: from sonic317-33.consmr.mail.ne1.yahoo.com
	(sonic317-33.consmr.mail.ne1.yahoo.com [66.163.184.44]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-405-3UFWTjWRPAGv5q6stugujA-1;
	Thu, 31 Dec 2020 21:24:18 -0500
X-MC-Unique: 3UFWTjWRPAGv5q6stugujA-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1609467857; bh=AV/gcD3E+lovYIKSiZqAr+A1uc0EdCxXWCITSvd7kme=;
	h=From:To:Subject:Date:From:Subject;
	b=djqKciEEs0Bpf+aK4BmusAvX9aTmdD0upOUb72tqWtz8GxM9lIoMv+oNPvBVStQ0R+xhoLa+s2bfgpPANuhgR5wT41qh3RWa12OfXQRDU7Pg5GWZApoS026ojKfqnvhpaFf9IQumLvEcEuxa7du4Q6wc9IbXeTn5wWqg4OGpIb4V/+KaUKA4iWitDFkav/4bxPuSFOL2yLC9FNdS5VQcVbO7Kldz+cI+bjHnzKnsCnkA17lTz3h62/JqilgQ4Wclm/62SISSKb5+TdaWMnCqdPVM8eVdLqp5u8tfeA9RaY9Pu46+SQdphd25CEJjO+Qv4H5mCIF629eLoAdvMjKfag==
X-YMail-OSG: sdovFiYVM1l8RxB7JB1DHlR8brgtQyBCnloIRfmg4MjfZyq2QfKNXE80k.k5VEA
	9QjAKsyYc39JYPThfd8.fWfH2ErQUODkGql.vrnuX_oKV6o1hvLCqlbaphsjRgb8h.qXfC8fWPS1
	NNJsIvwl25jVElsiv9NyCaciTMfqD4Vf5SexH4O3UPOTXToAktG64TL89Kse0wAp52UQWcp6E1ns
	8FKS2.XAD5LfUGbqJZvjvOjW4rBJfINh_Aj3lbwXjiWjUzNhHnIXR0etOH4aOyzDnax1v1Q9mB7w
	P4tsZlIaaqIQuK2sY2X5y7gKYEY_Kz8VgQS0gGT12iG95pp2Xk9Sq1CRucdv6imx5vSawPOq16OS
	Vz_W4MWa_haO4G.I8E7M5sOTopudN0JQjQohRP9lCFdBJrZ8XmnCxOtIe.RpnQRqyloT7L_kUGSZ
	MH45sUO9YAb6fp8orVlPN7qkB6T5oxRaKGt5gi7e7ak02TxV26FayejpXiqFJk1v9zBurLg2Ss3g
	UMDK40oAH7TbJaIQiv2f9NKoqEEa64qjlzdvftOD9dZ6gns4YPiE95VpDyZG.EWnr0ONWHSJmRDO
	K0f3GFuebw_X10UafNMF3U0uHg7Yi1j_N.mnon3Un_.5JDRj.8uDl0Na.A8RODzu6JtS0BbuPNze
	T_JBLoxXWnINYrM8D.b8RPtq6TO2E1khDfMmx4s6rvn8OmP4nxjrYOt.VEdeETv7PRpPA_EZHx.D
	cs_9NUqK5njzm5o7zqZpt4OwcHmEfp61uhYAsZycfggOwcxjqPVfHyvnPar7SIw9kKxlNc3d89qC
	WpoR_4U8HZWj9oroRbqjECcItGt35bRvKiIt8Itt5BFSyPfXWwtBX1chICOL0hSd3WVds1zBCn2T
	JETyk0iyaLaRd_OFvMTG2z9nZZd5aAZyEjaVsbXXiA9C4o7.8wAJ8xedswY7_uwdkU11tstxiE_4
	9IlQPx41SAhzn6T1Cchj8rGVAYMgs2atDKld5uzUk.e6x7QXxrrUYfLsZ087Bg2uyN8600.ZsLZw
	DLFhLcT2sUIWU4L85fEIMrL2riSo0bUBzxdYhSr6caNS8s8QoCVn_LTfF1Oi6LMSywbvZp1Gv0FA
	zN7RCRnJQZJsjeI.Qjt3sdhAvnnOiBTuZC4qa2WMC__NoJi2ln0fDijx5I_M8liHkvl18R8oux_h
	5ZZnL6hLgcebRYyVH5ihipF5tKLWuCJLV56DU6KxrtyOaIGRt7WajutKSMPxx36NwXz3NIasmJs8
	FviDzyinH9JA4avd3aMQKoqURDfvEHhgd5k_aXf97Puc6hOqFIU8hXt.U8sCk8GSAlbVFKdVexn3
	eM_WVTm_UXl_gtgqMWZEmxH8khn3or2uoF7_myx_Pp3p3CCjqeSwhPEbFx5RYQu6GOwL40TT7Apq
	QBZ5Wqr_BuX51Kc_hC7ANL9E7pQ_cQxbJcHUoDadBBQGDQjguah1VBpcpaLZnM5p6LLvQ.ZZz8CZ
	H34tJ4yQ8BqxH.i8Smx7Z6jlIxGKSZsGmJ97ZQ.UECHXLpAlem..wZAo9kLs_3yj.3FQgeGWzND1
	w8rfUh1w77duuqtU69s1K8QMEWKdSVuvlfybDrMghqwy7nZwVpbY92vF2f09tBYJj1M_v9JgB4Xe
	XNyxynbqYKbXn8Jlx58M7wzXkenj4EHSPyYyBNQCVlAVeW8HAtQNO6CS..5MnuRiKg0f_ymMegDy
	y_0gE0xx4I4ZR760DwuOYl7EZEBA1hSb.Nn8LOeWV0ojNIIPGZVZtOveO7K5M4gFWvPcZS2SXgh9
	3KUdeEhyZn876Ww3tm0BwHcR9wwykdT3S2yarlwjw.UwIkd_J8VDKVDgb8JhRdhVoo.mL88HwXFr
	extnI3icuYQmqcms7bzphiuRsIUW2rBubbiCifF0odE47XNsOuxbMHGzM8.zAqNM.SNJtN7gtVwP
	5uVQ9XfJPnoCiYgXADDa8uFfZZ41uNCQUgVBWOVd4A47H9dFlIrKUf4iRnyvmcB5idhAyrYIveHZ
	EI3Jl7wwTcB6APJkQ4.xtiOjkYFEmSkr0RylvDyYb514OoMA..623_6Gr1hUz3.SseUMBS2VlO0B
	WhcQMcSetfyZUgbo9DDS7NfQ_8yZPkVYCoPTedeChNdwryR.fWBfGYP3jNULy5ijysx2IHThuCSY
	zyCyM6mkH2mERxCjuQNc3Y0AjdfRyK4ytf2xs_eG3BIbTXkUs0LqN03agU4tLvrzC9kxdaMXZ6Ic
	iI7Uvuq4ohpumXwDgRMubMsSpv65A7fo_b56LtH5S9.Uw_gpOPHVG7_k7HTAPU7YJXgVzTp.8ROw
	COrey2h5dvYNqornbAkoQ7k5oweKFYfaFZsBjgdcH0kddy7K.n.ercPOCUknV2hLoqkgq1GjPC2c
	-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic317.consmr.mail.ne1.yahoo.com with HTTP;
	Fri, 1 Jan 2021 02:24:17 +0000
Received: by smtp421.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 569b44404d97e6c72e0c6188a9474ddb; 
	Fri, 01 Jan 2021 02:24:12 +0000 (UTC)
To: <blinux-list@redhat.com>
References: <2e9e01d6dfbf$56add9f0$04098dd0$@kellford.com>
In-Reply-To: <2e9e01d6dfbf$56add9f0$04098dd0$@kellford.com>
Subject: RE: Remote Desktop Under Linux
Date: Thu, 31 Dec 2020 19:24:11 -0700
Message-ID: <015f01d6dfe5$312ce920$9386bb60$@yahoo.com>
MIME-Version: 1.0
Thread-Index: AQLMqtr99Q4Qi3carLUUIj+gRDGoiqgmcb+w
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I actually tried this about 4 years ago.  I wanted to connect to a Windows
Desktop running NVDA or JAWS with a Linux based RDP client.  While
technically possible, I discovered at the time none of the RDP clients would
take the RDP audio stream and route it to Linux audio.  So, I gave up when
my last attempt with Xrdp failed to try achieving something in the opposite
direction.

So, I would be interested if you find a way.  I've not looked into this any
further but I would love to gain screen reader access from remote GUI
connections as a lot of software development agile work styles are doing
something like this now and I can't participate without a screen reader.

	Dan

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Thursday, December 31, 2020 2:53 PM
To: blinux-list@redhat.com
Subject: Remote Desktop Under Linux

Hi,

 

I have my ssh access and local GUI desktop working for my Linux machine
quite well.  I also have ssh access to a Linux machine on the Microsoft
Azure service working.

 

Before I go down the path of trying to get remote desktop access to the GUI,
does this actually work.

 

The article at Linux - Microsoft Azure
<https://portal.azure.com/#@kellykellford.onmicrosoft.com/resource/subscript
ions/968d4c66-18eb-48df-87b5-6d1918a03749/resourceGroups/linux/providers/Mic
rosoft.Compute/virtualMachines/linux/connect>  has details on what you need
to do to connect to the GUI for a machine running on Azure.  I am hoping to
use the Windows RDP client to connect and just get the Gnome audio.  I know
it won't be perfect.

 

If this does actually work, does anyone know the syntax to tell the XRDP
service on the Linux machine to use Gnome as the desktop session?  The
article shows this command but it is for a different desktop.

 

Tell xrdp what desktop environment to use when you start your session.
Configure xrdp to use xfce as your desktop environment as follows:

 

echo xfce4-session >~/.xsession

Restart the xrdp service for the changes to take effect as follows:

sudo service xrdp restart

 

Also, thanks for the answers to my other questions here.  I haven't
contributed much here but will offer one tidbit, on the off chance anyone
here is trying to use Microsoft Teams on Linux.  You have to start the Linux
version of Teams with the additional command line of
-force-renderer-accessibility.  This instructs Chrome and software using
Chromium, to ensure things go through the accessibility API.  If you don't,
Orca won't read anything when Teams loads.  If you do add this, Teams works
fairly similar to how it does on other platforms.

 

I know I do not post here often so in full disclosure, my day job is working
for Microsoft running  a service known as the enterprise Disability Answer
Desk that works to resolve accessibility issues for business, government,
education and other enterprise customers.  I've wanted to understand how our
technology works on Linux, where we have it available.

 

Kelly

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

