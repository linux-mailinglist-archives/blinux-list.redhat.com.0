Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 470A8429CC5
	for <lists+blinux-list@lfdr.de>; Tue, 12 Oct 2021 06:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634014407;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hYZpgk2YpxoR8+b2jYxivlPFIQXuLm6Hj1AOWWAGJsc=;
	b=AFXGb3Q8pX6XO+eA6Wc63Fg7RqhMZmFYveK3AYCvf6NKXZy0TAP3W6AepdOJdPF7HAAcCW
	NWu9yKsZ2wVNr3bTRfPn0A8a94nqNrJ4PGXJRXBL5k6tSEYft7W89bWJ9ImUQG5uGWJP8K
	TrlAWGK0Ju7ghMhxKWwuU3xDGPugXpo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-183-O-14or0aMGO3oCYJCN05fg-1; Tue, 12 Oct 2021 00:53:23 -0400
X-MC-Unique: O-14or0aMGO3oCYJCN05fg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB4B1A0CAB;
	Tue, 12 Oct 2021 04:53:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F185719723;
	Tue, 12 Oct 2021 04:53:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E7CFE1809C84;
	Tue, 12 Oct 2021 04:53:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19C4rEvv003884 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 00:53:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F1A9F2166B26; Tue, 12 Oct 2021 04:53:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC43A2166B25
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 04:53:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3FD5E800963
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 04:53:11 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-248-R1nf4w5IMCGNUw9nkXiszQ-1; Tue, 12 Oct 2021 00:53:09 -0400
X-MC-Unique: R1nf4w5IMCGNUw9nkXiszQ-1
Received: by mail-ot1-f52.google.com with SMTP id
	d21-20020a9d4f15000000b0054e677e0ac5so10451578otl.11
	for <blinux-list@redhat.com>; Mon, 11 Oct 2021 21:53:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=dxSx3V2euWTib64vV6dXP2xY2ZfsPPsOSR1L4rxzPz0=;
	b=qBOAjIZdeG49O4eysFOwPh+QST0AqZ6rXro+5tq/zh8HxJv7h9B8I9Yn3bOs8+VLtv
	Kb1AIP2fsnF1p5UtlFSaW9cKp/9ITIuJZS3T5UzoOgPMHsHnE5O5XDkDxCvT6tQS0plt
	ZmT8UPaZze/Z4dwqSs8RwzlJ5HsWJCgnt3BmqLgrgPM7xcGpA5KxE3K5KsNQbDhzoJWg
	5Jpooc4qTkzEAEK0mDJli9YxWVyXFul/3MXFZY1zxPCBJH11sO6bG4UHpatdqQ3Fhl89
	FgaZR9tIc+B3JyzhvRziTKGu/ggxxLmGQ2+AOIltE+JAhZZwXp/TShhh1WKY0C6jk7Te
	GoTA==
X-Gm-Message-State: AOAM533onugJghfXBgmpCkGQR94xqYYC+pjVu4/ivyHoHnFk9VT33yOq
	LahNMkZ0UZCGkbi5BCRUqkblZtbdO1s=
X-Google-Smtp-Source: ABdhPJzApPgo81iQxTuLUnL9p2p/xeQRnygO6pjw5tlcnqifBznwOUi10KJNJ85ffiB6q8FagTjUsA==
X-Received: by 2002:a05:6830:2259:: with SMTP id
	t25mr8615864otd.224.1634014388291; 
	Mon, 11 Oct 2021 21:53:08 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:3d0e:6cf4:7fa6:2285])
	by smtp.gmail.com with ESMTPSA id 64sm2142831otc.18.2021.10.11.21.53.07
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Oct 2021 21:53:08 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
Date: Mon, 11 Oct 2021 23:53:07 -0500
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
Message-Id: <2C7ACF12-3A69-42CB-B88A-E630B01CB1C1@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19C4rEvv003884
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I got the full name wrong.
It is Accessible Coconut(OS) from the link, and one may download it.

> On Oct 11, 2021, at 11:40 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hi guys,
> I was wondering if anyone had suggestions on what distro of Linux I should load onto a new computer? I will be using the computer for mainly school purposes to learn the OS.
> Any help would be greatly appreciated.
> Thanks,
> 
> Ashley
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

