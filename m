Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FC24AF678
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 17:24:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644423881;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=btzHvjZjZNDk8L/VHGNnUhsDIhSrRQWL/ZYEM5a50no=;
	b=Pvh8AeuKPpE9Cx1wx1G40hJkEi94MKOnyrIqMECMBHDvZAA8qCMZ1LKVlGzqNe44GJYp5Z
	N5iUn6emvNR0NRGicocyhpn02Fu2GDlMPG5/1D07GCVvta4IGSLjY82q+exvypE5qeLRDy
	BN7poPLpDtmbkdVXuyWnKJnfHJOMSn8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-553-1MVH9ztLMliOa86PAtjPsg-1; Wed, 09 Feb 2022 11:24:38 -0500
X-MC-Unique: 1MVH9ztLMliOa86PAtjPsg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E3C383DD20;
	Wed,  9 Feb 2022 16:24:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF437798BF;
	Wed,  9 Feb 2022 16:24:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BD0234CA93;
	Wed,  9 Feb 2022 16:24:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219GOP0K017249 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 11:24:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B2029401E80; Wed,  9 Feb 2022 16:24:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE6BA401E24
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 16:24:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 909F3296A60A
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 16:24:25 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-636-8YAxB6WPM4-hUH5V97dfZg-1; Wed, 09 Feb 2022 11:24:24 -0500
X-MC-Unique: 8YAxB6WPM4-hUH5V97dfZg-1
Received: by mail-qk1-f176.google.com with SMTP id g145so2046426qke.3
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 08:24:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=sQ2NwMxaomTg96pdNXnpVIeDFTtdguV8vBw+iyjj+G4=;
	b=EoUWmi+KouTLvNzXw5c2Lq1jG+B7Y65vT67sxuDOOrRqfedxGW/WAdpEejpZk+vTdd
	jL+eWtRjhnzDTxzhZ5X10fjaiTDbCbXDasvsjA+BwGuTkB8nw12osR+NV/x/6E7v/fP/
	oVcCjpw6uIqnnVE46f+hs8KK3aPwhrYI8ANMKZ64oQEetz4lJwQ+InEldnMf5LYiRBht
	2tLrJpGTaokm3lqM6+wVEqJ6fjOmvWYhgAHFaPtgtjSj6Oz5qMJVaTMceVZYeEpi+Tol
	igHW64Vq/oGdbZvl+slX8F4TNkq1nZG4G16mqZJH7+EG+coaELxgDM0ydREGtKO4dVtK
	nXlQ==
X-Gm-Message-State: AOAM530hw3TM4h7OQB/X9hFeaJ8LPvfyIjFpIesKpS9P0jdxG7PqqF14
	pxQXm0Ppd5xJ4acpTcIeH1+OQQYuTrvtsACS5JlNLaTp
X-Google-Smtp-Source: ABdhPJzKVgKpcjh9GWOAa6LFzgbO72ndRQNStaQWdtiV7k/u77C04q2H+uWNBJM6J6Ios+xSvBOn6VN4VSHwzihDyp4=
X-Received: by 2002:a05:620a:31a7:: with SMTP id
	bi39mr1519016qkb.124.1644423863358; 
	Wed, 09 Feb 2022 08:24:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:518d:0:0:0:0 with HTTP; Wed, 9 Feb 2022 08:24:22
	-0800 (PST)
In-Reply-To: <20220209090549.4659750f@bigbox.attlocal.net>
References: <20220209.123818.520.13@192.168.1.100>
	<20220209090549.4659750f@bigbox.attlocal.net>
Date: Wed, 9 Feb 2022 16:24:22 +0000
Message-ID: <CAO2sX33BR+rnxEVtDOnAzyP=bQ0cB1bkLKpkVKGSmZdYJiSiog@mail.gmail.com>
Subject: Re: regex help
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On my end, I'd probably do something like.

rename.ul "." " " *.txt
repeat until all periods are gone.
rename.ul "  " " " *txt
repeat until double spaces are gone.
rename.ul " txt" ".txt" *txt

to restore the dots before the extention...

Admittedly, this is a bit clunky, and assumes the only dots you want
to keep are the ones before the extentions... Also, I'm running an old
version of util-linux because newer versions either drop rename.ul in
favor of making people use Perl's rename package or changed the syntax
in a way I found harder to use...

So while we're on the subject of renaming stuff, can anyone suggest a
more current rename utility where doing a simple search and replace on
all files in the working directory is as simple as:

command "string to replace" "string to replace with" *

perhaps with replace  all instances in a filename instead of just the
first as default or a simple dash single letter option?

I don't doubt the power of perl rename, but the last time I tried it,
something as simple as replace one string literal with another string
literal was more complicated than I was comfortable with and those
account for the majority of cases where I want to batch rename stuff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

