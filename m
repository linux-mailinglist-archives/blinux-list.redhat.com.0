Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3CAF92B732E
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 01:36:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605659811;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AFdwcQ2qb2ZOrRbtkETZzaJTY//3oAM61awgDSnQSys=;
	b=Dx9JcKZkSvJeO7iYwVxAgWrmPflsRH4bPX7i6ey+Np7INUaNy3UDR3uJ+VCGyjcQLJ++h/
	MZSBSpH568GrzXJ+rJpDqL78u7Jvf82h7k6+jw8W7xWxHCpF+L1OJMTRHN7G3pd/Icv7wE
	7kM5by/9vb9RvzmCeRL9tRaqrcTFYV4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-kkUQSH4kPAy1Obzyhppsqw-1; Tue, 17 Nov 2020 19:36:48 -0500
X-MC-Unique: kkUQSH4kPAy1Obzyhppsqw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 607B61007B2C;
	Wed, 18 Nov 2020 00:36:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E614910013C4;
	Wed, 18 Nov 2020 00:36:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 23D598C7A1;
	Wed, 18 Nov 2020 00:36:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AI0aWJh019523 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 17 Nov 2020 19:36:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BF6822166BA0; Wed, 18 Nov 2020 00:36:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA1262166B44
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 00:36:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 02F95185A78B
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 00:36:29 +0000 (UTC)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com
	[209.85.166.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-477-PbbfijyIO3O9rNmJEREulQ-1; Tue, 17 Nov 2020 19:36:25 -0500
X-MC-Unique: PbbfijyIO3O9rNmJEREulQ-1
Received: by mail-il1-f172.google.com with SMTP id q1so389015ilt.6
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 16:36:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=7qCInOyjKZSFr2enOg2kj5Dke8O1xX/EDrboqdqDVyg=;
	b=hoKetkaVDCPqwouBS/7azuzoBpbj04gXtS4sD0yJG4Ma4R/XAzCYwWFIWwsgPX2LRM
	cfAnQUP1AVfvhF/jGJfkUvznravMqhpAy7B+udV3mZuUtPnMj1ajMHgF/JhfHFfsWial
	2oe+/j/i8ZOFr3kgsIK6kKJS8+6PkHZNWmzPyeJ0fAeMvfCfz3utkYCNQPjPjPsCMsSA
	3vAnvi8a4EN0s29zdH4qAFntUGl+1pYAhOSPvji8/7A/wVQ0EpHjRM43UbHXPmxIKfEF
	A6W9F3l33vDzg1YPIX1Unb7eudskuOODZO0rCB4w0wEYt13tP36DY6N0i4mpLfmGsmj/
	79SA==
X-Gm-Message-State: AOAM530UvfFhLcLq06uWkGpeWis1g2X1qG+SYG2j8oGHAJkRMWNGsU+i
	rAc6l1q8JyU2SFrJx0YaTKH4joTHn0tL19bZta45FY/cXu0=
X-Google-Smtp-Source: ABdhPJwto7M9ObQT8JsNMyy1kSA+AwcI9+ao1GTahXhm+1yYku9mx0fIdjp533k2hU6GOy0pkFxJep3dS3y1wufAupw=
X-Received: by 2002:a92:850f:: with SMTP id f15mr15412251ilh.286.1605659784915;
	Tue, 17 Nov 2020 16:36:24 -0800 (PST)
MIME-Version: 1.0
References: <alpine.NEB.2.23.451.2011171247360.29919@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2011171247360.29919@panix1.panix.com>
Date: Tue, 17 Nov 2020 18:36:15 -0600
Message-ID: <CAN8Cudjc1YNLBu_MLC+MU5g51HBuqk4nh0i4osfyGETY-JPVUw@mail.gmail.com>
Subject: Re: as I suspected
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

Daniel Nash, the maintainer of Jenux, is a good friend of mine and he
always seems to make sure that things stay updated. His dedication to the
Linux operating system and to his user base has not been equaled in the
space of visually impaired Linux distributions, at least in my opinion.

On Tue, Nov 17, 2020, 11:48 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> A new iso was released.
> https://nashcentral.duckdns.org/projects/Jenux-2020.11.16-dual.iso
> for Jenux.
>
>
> --
> United States has 633 Billionaires with only 10 doing any annual
> significant giving.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

