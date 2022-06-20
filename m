Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 804EF551385
	for <lists+blinux-list@lfdr.de>; Mon, 20 Jun 2022 10:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655715492;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wF1WLHAxXw3eWPAfcyBKeMeSNV2J2eMYccaDnk3kDI0=;
	b=f149UwG2u7Ha9FrEEVcUfhStFf+mbzGUma1PUuZm4j2NRiW6OioHX5VIAAZapJW8p84i9P
	Slv0X9nMDGvStaNKgVs6SpSwGy/yokwQaaHUsBxH8s5eX0y9uzRjGRoqYuY+cOqKadQlW0
	3YlU+gf120AZvotVBrSVkqD0ZscyKrw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-133-5EbMVxxiP_Or0SN77u_TFw-1; Mon, 20 Jun 2022 04:58:08 -0400
X-MC-Unique: 5EbMVxxiP_Or0SN77u_TFw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2C2E7801E6B;
	Mon, 20 Jun 2022 08:58:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id ACB5D404E4C8;
	Mon, 20 Jun 2022 08:58:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 224071947069;
	Mon, 20 Jun 2022 08:58:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 20 Jun 2022 10:57:50 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Reading Kkindle books on Linux
In-Reply-To: <mailman.26502.1655682449.111206.blinux-list@redhat.com>
References: <mailman.26502.1655682449.111206.blinux-list@redhat.com>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
Message-ID: <mailman.26622.1655715481.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi John,
ebook-convert book.azw book.txt
will do it, provided that there is no DRM on the book.
Regards, Willem


On Sun, 19 Jun 2022, Linux for blind general discussion wrote:

> I have ebook-convert I would like to extract the text from a Kindle book and then translate it to Braille. Is it possible to get the text? I don't have the book yet.
>
> Thankis,
> John
>
> -- 
> John J. Boyer
> Email: john.boyer@abilitiessoft.org
> website: http://www.abilitiessoft.org
> Status: Company dissolved but website and email addresses  live.
> Location: Madison, Wisconsin, USA
> Mission: developing assistive technology software and providing STEM services
>        that are available at no cost
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

