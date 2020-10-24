Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id F1D6B297D28
	for <lists+blinux-list@lfdr.de>; Sat, 24 Oct 2020 17:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603553893;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hjuKp7xzowxjGnNbJRFGlC5Qk2rconvo/K/xkK3GTZI=;
	b=Qu769rEzYCyBhbhLpftfxGwxn497XBwmwug8voDJRCjDjjuKuLkNqJWH2if+ifGTkyZpX1
	/17T1FbLs9ScpmZaSH3V/y1JURHv2L3rT2v7ddDR4mtTnkF8pkxI6RcHrASUfnJk+aspgF
	SD03ac6mHeWWL0AwxWUmBZb1p7/nGjI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430--8EJzGc8NtCfl4o7gQK2oQ-1; Sat, 24 Oct 2020 11:38:11 -0400
X-MC-Unique: -8EJzGc8NtCfl4o7gQK2oQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E8C86107464C;
	Sat, 24 Oct 2020 15:38:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C4F9B10013D0;
	Sat, 24 Oct 2020 15:38:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A9C1044A43;
	Sat, 24 Oct 2020 15:37:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09OFYrQa006678 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Oct 2020 11:34:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4AFBF2157F24; Sat, 24 Oct 2020 15:34:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45F422157F23
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 15:34:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F18DB811E76
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 15:34:50 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-206-dlGAD939PnSgKo8dvabDcA-1; Sat, 24 Oct 2020 11:34:48 -0400
X-MC-Unique: dlGAD939PnSgKo8dvabDcA-1
Received: by mail-oi1-f180.google.com with SMTP id j7so5777818oie.12
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 08:34:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=XmcMXTAj1fXpmC28BWTLjS8QS6Gao2cuSNmhmfd12lA=;
	b=AOjGtAj5jHgN0onKVtj+L/V0+8UsdGevSK5WvgxboX9i9y0AIBvphWiEwdFV4AidO4
	a4xmn2LcVsoYXavTkzTUFzRqMB/tgVxfD5UXC0U2vLwFxi0/MdR11gjJxgvG0oXFNlOe
	eEos1YmL8sv0JVaAs55gwXCtLWxFuSURBgIL0ACEdEb9SZ3ZBdA/KiWAMn/OrLgI613E
	i+dawGUueTycFeVL5tFaOWLr/uiw0JdZRqcc9LvbYqrM9sMAVercxRSln9fp92AUCfW+
	ZM6SRBEZXAWL7s/LoGa2A0dSgQUfQOwtbzuZVk5tJ7+h48fRJqtX80Yh3jlLn0vwO29k
	vbQA==
X-Gm-Message-State: AOAM5304Hg16GOo9a1WGw3CasUoINoSQ/livD+6dajh3A4HrbeuJlIA2
	QHqI6Xjrg5rQgISns40qgQnX0QO77ps=
X-Google-Smtp-Source: ABdhPJzPasDLmd4RFqcnnaOTdWF/E/090UDDDUd9KNpkWSrI1nuFdofAQL9DDT9szsVuE/ZaTtz0mQ==
X-Received: by 2002:a05:6808:3ce:: with SMTP id
	o14mr6111318oie.62.1603553687449; 
	Sat, 24 Oct 2020 08:34:47 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:fc53:1f50:b29c:f0e6?
	([2601:3c2:8200:9360:fc53:1f50:b29c:f0e6])
	by smtp.gmail.com with ESMTPSA id q7sm1458780oig.42.2020.10.24.08.34.46
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Oct 2020 08:34:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: How do I install Voxin on an Ubuntu based Distro?
Date: Sat, 24 Oct 2020 10:34:45 -0500
References: <160352425235.6.1944557228384903424.1427650@slmail.me>
	<20201024.073231.148.6@[192.168.1.130]>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <20201024.073231.148.6@[192.168.1.130]>
Message-Id: <523907DF-3CB3-43E7-8BC4-809ED7EC82C6@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09OFYrQa006678
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Are you using orca with ment?  I tried installing ment, and could not get orca to run.

> On Oct 24, 2020, at 2:32 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> You've got to extract the tgz file first.
> tar xf file.tgz
> Then you can do your cd commands.
> 
> 
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Date: Sat, 24 Oct 2020 09:24:10 +0200 (CEST)
> Subject: How do I install Voxin on an Ubuntu based Distro?
> 
>> 
>> Hieveryone,
>> 
>> 
>> Ihave Linux Mint with MATE GUI using the Orca screenreader on a laptopand I am trying to install the Voxin TTS voices I bought.
>> 
>> 
>> Thisis my first time installing softwareon Linux.
>> 
>> 
>> Onthe Voxin website they give instructions for installing Voxin onUbuntu. And Linux Mint is based on Ubuntu so i think the installationcommands should be more or less the same.
>> 
>> 
>> Theysay for Ubuntu type in:
>> 
>> 
>> sudo--login
>> 
>> 
>> cdvoxin-3.3rc1
>> 
>> 
>> cdvoxin-enu-3.3rc1
>> 
>> 
>> ./voxin-installer.sh
>> 
>> 
>> Idon't have any files that are just Voxin-3.3rc1. The files that Idownloaded each include the name of the TTS voice within the title.
>> 
>> 
>> Forexample:
>> 
>> 
>> voxin-american-english-ava-high-3.3rc1.tgz
>> 
>> 
>> Soi went to my terminal and tried typing sudo --login and after i login, then i typed:
>> 
>> 
>> cdvoxin-american-english-ava-high-3.3rc1.tgz
>> 
>> 
>> butit gives me an error message, something like, bash cd no such file ordirectory.
>> 
>> 
>> Couldany of you who have installed Voxin for Orca graphicaldesktop on Ubuntu based systems please let me know how to install it?
>> 
>> 
>> Thanks,
>> 
>> 
>> SL
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
> 
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

