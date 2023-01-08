Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBFF661844
	for <lists+blinux-list@lfdr.de>; Sun,  8 Jan 2023 19:45:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1673203504;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DqdBvyio8py0NsM1gF6db6mbnNPdmLYg44aX12otf1g=;
	b=ULsyRZRGry8rs1F0PFcfFiMhqzRbepjyG/xhbJkpy/QsmDUfIjRQTarBHdXqh3JpnUpVhs
	C170VZRbDHQDUX9OCOG8KpsqxLKtfGnVZqC/0XUwKfXT80hKbGaEVs0YUOF2+hg1w8+ZBT
	LSZGU4x9U+yWp8qBJa/zvqWS/VXZmP4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-646-aYW7-DnPMaeE-O9cR45Bhg-1; Sun, 08 Jan 2023 13:45:00 -0500
X-MC-Unique: aYW7-DnPMaeE-O9cR45Bhg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05748101A52E;
	Sun,  8 Jan 2023 18:44:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 30E772026D4B;
	Sun,  8 Jan 2023 18:44:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 903D219459C9;
	Sun,  8 Jan 2023 18:44:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 8 Jan 2023 18:44:48 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: check for existence of file
References: <mailman.3349.1673126966.2515671.blinux-list@redhat.com>
 <mailman.3474.1673161769.2515660.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.3474.1673161769.2515660.blinux-list@redhat.com>
Message-ID: <mailman.3602.1673203492.2515669.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  Git does particularly poorly with large binary files
(like a .ISO file), so I'd hesitate to reach for that as a solution.

-tim


On 2023-01-08 08:11, Linux for blind general discussion wrote:
> On 1/7/23 22:29, Linux for blind general discussion wrote:
> >The script c-jenux.sh checks for existence of a specific Jenux iso and
> >lets the user know if it exists and does not download the file.  I'm
> >finding this useful for this particular project and I figure others may
> >find it useful to check for other files as well so I'll post this below.
> >
> >#!/usr/bin/env bash
> ># file: c-jenux.sh - check for bad iso
> >wget --spider -S https://nashcentral.duckdns.org/projects/Jenux-2022.12.04-dual.iso 2>&1|grep -i remote
> >https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> 
> Would be better if you would point to that file being tracked in Git!
> 
> --
> John Doe
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

