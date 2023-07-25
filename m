Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 057DC760956
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jul 2023 07:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1690263301;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NEI5azriqjMgnNm2ye0liUUV0Bo3kibgZV/tmoVQbt4=;
	b=QcJrUuhWl+Zo5pMUZ7z78/wXLU+R3bPailCgBNAHz8gPN1EKFrqoLg60bluxwiUzd8Dm8q
	RWlw2e8uu/n+FZyk7u995HV8KBwojGOX9LH13JVy5ixNH8e86DsVjGKW996Jo0rmA1KZhP
	im2P8XbFfcuDY1yovUmQ0JC27+1BVf0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-132-6CfLarYlOQiwm4q1_te94w-1; Tue, 25 Jul 2023 01:34:57 -0400
X-MC-Unique: 6CfLarYlOQiwm4q1_te94w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A69DD86F124;
	Tue, 25 Jul 2023 05:34:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0B186C2C856;
	Tue, 25 Jul 2023 05:34:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5100E1946A68;
	Tue, 25 Jul 2023 05:34:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 25 Jul 2023 07:36:21 +0300
To: blinux-list@redhat.com
Subject: Re: Kindle books
In-Reply-To: <mailman.340.1690247302.3172875.blinux-list@redhat.com>
References: <mailman.340.1690247302.3172875.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.368.1690263288.3172871.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



Hi Cleverson,

On July 25, 2023 4:07:13 AM GMT+03:00, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>Hi, upon searching, I've found 3 applications that claim to display Amazon Kindle books for reading: Calibre, Foliate, and Lector. Is any of them good?

I have used Calibre to convert Kindle e-books from AZW digital restricted mode to open format. This process was cumbersome like any other method using digitally restricted media. Unfortunately I haven't converted e-books lately since my local library has an accessible service where they provide freely readable e-books. It is also possible to request almost any book including university coursebooks on that service. The service is free of charge for people who need certain accommodations in order to read paper or electronic books and papers.

This is how conversion with Calibre at least used to work:
I purchased a Kindle Paperwhite device from Amazon which automatically got attached to my Amazon account.
All purchased restricted kindle books got automatically downloaded by my Kindle device.
Kindle connected over USB to my computer.
Calibre fetched e-books from my Kindle.
Calibre converted digitally restricted media (DRM) AZW e-books to open format and placed it in a folder/directory on my computer. 
If memory serves I used Daisy reader for testing the converted books. The local library provides Daisy readers for those who need it.

Technically conversion uses cryptography where Kindle device serial number is needed for removing the restriction where one is allowed to use only that single approved device.

For converting Amazon Kindle ebooks with Calibre one needed to have a physical Kindle device. It had to be Kindle Paperwhite or some other e-ink device. Kindle e-book restrictions were bound to that physical device. 

I have no knowledge whether Amazon still uses the same cryptographic methods and if it still is possible to remove the restrictions. You could try contacting the author of Calibre and asking directly. 

Regards,
Birdie

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

