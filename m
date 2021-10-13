Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9602C42BDCD
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 12:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634122190;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZmIGzvkWbqlEZljODOGvqHq+YCIHw7P1I6Kq9Ld2m38=;
	b=gX9KJzV3spRdZd9zlt4M12y1rs9yv2c44RdDOVhEfRIar56T8MTFpqRsfZFVsrOXdEmbMZ
	+htu+lXwck3aPrh5sBh3XMXOV+EHQ/vlZj7l1q/y25L9P7CAeyCwSfMYWFEVwgmrC/zuxa
	4nL/rsk5GOyyL/efsU4obXob1bYzheM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-448-MZRimBgOMF6cniwpFBH5LA-1; Wed, 13 Oct 2021 06:49:47 -0400
X-MC-Unique: MZRimBgOMF6cniwpFBH5LA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47B40801AA7;
	Wed, 13 Oct 2021 10:49:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2EB6960CA1;
	Wed, 13 Oct 2021 10:49:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9A7BC1800FE4;
	Wed, 13 Oct 2021 10:49:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DAlfm3021274 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 06:47:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A4F651112C3D; Wed, 13 Oct 2021 10:47:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0DEB1112C3A
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 10:47:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DED12185A794
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 10:47:38 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
	[209.85.167.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-450-Bb-cfO9zOMGf9hb7QxKmtA-1; Wed, 13 Oct 2021 06:47:37 -0400
X-MC-Unique: Bb-cfO9zOMGf9hb7QxKmtA-1
Received: by mail-oi1-f178.google.com with SMTP id e63so3243075oif.8
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 03:47:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=ytMyq3tY0A/8w1U3sk46lna0cLLYWUbLkpwIFpaa26g=;
	b=P8J7TCaoLNdroGaAp7fBNaiWP9HvQuuxlhk3SgpKkDfgRFXc9wNHV71SrrviAj5cla
	Aupz5RiVnwMTo2DRw3rleDKiUv1tlqr1Q1sZ/TUfiVPdnxjkJp9V1WL3WKSqNicSKnoM
	b24OgIxo5Ik5KJBxrS6JDoi/b7WN+yICIqt1OwGYiXr5P6iukmcI1ZFGaqVt4rauXoVO
	TdGH1nFndUCP4x39hO28RV/z+4HB+tsdZzCijbyFtNzmeEZ8jaWMn1Bbhqd9r3h/zv24
	f1Y1dc20iCgJlu5In41wa3K3hMhExDY9x4g+bzCvHumM5uYG5FXypbuEnBFPkCkJRjWO
	v/BQ==
X-Gm-Message-State: AOAM5337aACqY+nVPW2cysX5b+vtzF4n1rCnkz5kfW9EylEC/l0iiKdA
	KGAk2+VbXCznFasQO+M4tmrQdgD0h5I=
X-Google-Smtp-Source: ABdhPJyzqvhc1mnlBQPneVRv94BIG4mqjh6Qv9mzqetX5bCcOGeFpZavQ59onuYEomO+hBDT2ZUDQQ==
X-Received: by 2002:aca:e141:: with SMTP id y62mr7877070oig.124.1634122056158; 
	Wed, 13 Oct 2021 03:47:36 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:bd72:15f2:6981:d4c9])
	by smtp.gmail.com with ESMTPSA id
	q39sm2854366oiw.47.2021.10.13.03.47.35 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Oct 2021 03:47:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
Date: Wed, 13 Oct 2021 05:47:35 -0500
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<41D44D20-F41D-4D2D-B3CE-3F00567522EC@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <41D44D20-F41D-4D2D-B3CE-3F00567522EC@gmail.com>
Message-Id: <25040872-3042-4567-9052-D9FA44B55880@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19DAlfm3021274
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I installed fedora mate 34, and had orca and logged in.
But after logging in, I could not get orca to work.
Using be my eyes, someone said mute was not pressed.
Volume was up.
So not found the problem yet.

> On Oct 12, 2021, at 6:20 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hi,
> 
> Has anyone had problems with audio with the latest fedora 34 or even the 35 beta.  There was a bug which someone reported something that had to do with also, but perhaps this is fixed now?  I will have to give it a look and see if it is fixed or not.
> 
> Matthew
> 
> 
> 
>> On Oct 12, 2021, at 8:12 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>> 
>> A huge +1 for Fedora MATE. I have it running on two computers here, one is not mine, and it works great. Orca comes with it, and you can run a full install after pressing alt+f2 to open the run window and then entering the word orca. Wifi generally works out of the box, though the NetworkManager applet that controls it doesn't tell you what it is. Still, you can just hold the alt and control keys and double tap the tab key to get to the top panel, then shift tab past the toggle button and press the enter key to bring up the menu that has your wifi connections. There's not much more to tell other than it's a great OS, not just for learning, but for daily use, and one of the computers in the house that is running it is even being used for gaming and live streaming. If you need to dig deeper into the guts of the system, it allows for that as well. I for one highly recommend the Fedora MATE spin.
>> 
>> ~Kyle
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

