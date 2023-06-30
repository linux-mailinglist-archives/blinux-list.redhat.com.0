Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F26744218
	for <lists+blinux-list@lfdr.de>; Fri, 30 Jun 2023 20:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688149354;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UjSmmRO53dWkFWaLAYHDtv32aP8oUXbSLeOJmpjVMfg=;
	b=h9D9l5TKi7eUdHgwcGsbkK679/KHU9bODDKSJvmq1dg0qT/UqGNfTPwtmfYTFEaKTswjnr
	O0dJN52loctLTjW3/Vbeyvj6EiMsrXjIJOLm9VQmQV0z8Ev/gLjYsDedO9HPP4Ii6Ha+kI
	H8h4FDoJNn04VrDOjiD/zro1V88kHtw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-638-ZHycllB6N86M19A2JpDtsA-1; Fri, 30 Jun 2023 14:22:30 -0400
X-MC-Unique: ZHycllB6N86M19A2JpDtsA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B27A858F1E;
	Fri, 30 Jun 2023 18:22:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 86D5A2166B2D;
	Fri, 30 Jun 2023 18:22:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C29C91946A49;
	Fri, 30 Jun 2023 18:22:22 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 30 Jun 2023 20:09:17 +0200
MIME-Version: 1.0
Subject: Re: v p n and linux
To: blinux-list@redhat.com
References: <mailman.1554.1688134875.3098363.blinux-list@redhat.com>
 <mailman.1673.1688141668.3098370.blinux-list@redhat.com>
 <mailman.1615.1688143995.3098363.blinux-list@redhat.com>
In-Reply-To: <mailman.1615.1688143995.3098363.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:/xXvIJNHJ7Q=;70vHUqocSJANjV9gcoUNORv2Z+E
 rN0aUFy+Y5JOTWmFFWLoEzdCDQBCB6X+KSKZUK+WpbXZUdKgi+9HmMbL9r5OCnib87YyP3cIS
 LJACDyDiBYLIWPwFjFpw2PHrfhzTzkErfQzpd6AbfDfQn7FoXMb8LYK/O0PD7zJCXJTAWCSnD
 rcSMV+iwJc1yJ5FHSjFT0IJBMh5lgpC5wYmVgeIPubVD7JcMvP1+Hi8aUzCGnM3ilWkxS/Dja
 3qrYyuEfzFVcdbYBiggHIYn58FNLS2YrQcuF9sYmruL6wmOOfrCiDQE9BKl5Nk0syCEK7qzBh
 7bhg2zxNcJmG/or2iPqGCygqrZb9aR6tFQ9Zz2kz/POFGvxvZF32+pHdHGUkifksg23PmavdF
 y2/0agH0Y9MI4OjdueyXShm72B3Y36HqggV9tR4iFoVwVMN8XV93X7KNrEvYR4Gu9Ww2ld8I/
 n94GnaJs6imikZN0kMhisoZnHt+ppJLRh9/SMlRukblHqNx3s+Dyzj5L9Y9NINUhlpLcPrZMY
 J+DOPYm+IIysBIHdkTtQwSTnZPGidZPYCeEVyCFJt1UlcOgc8D10LkGYnYaHVi0O3KktRTUxi
 sMwL0WO1qCFnPmpD/jsGW3cAEzfvAndleAjwasssz+G8oHwUPZuo3/RkLC+h+4pisxi9rGTxO
 slyIX2Aue+0hLvvslkfhWTqGj9T5pXRhCJbMjJtYRb7x+FXg0CnRzfV/kvVky9V139psVyvj0
 6UAgHrSbTQy/rDKLOnwIbXNzUaylMGvQl0XcMaW+TW/3V8efgXJvp1JreiP/B6CXEt9+kCXL5
 yazi2IfGV/pHe71B3fDFIdod3lQtYYM4wOOHSe4QcuOJ0dobCR0PWgddeahaD5WBI6Wv/dWsb
 yy7rG9jiFGfxNAZ8OnmOB8ARt2jVwzNDqCT1utGNjRw7dV5qgQXBtSKfUt1q+rMGemQFoHHOb
 7+4v8w==
Message-ID: <mailman.1970.1688149341.3098366.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 6/30/23 18:33, Linux for blind general discussion wrote:
> Where may I get wire gard?
> How may I find how to set it up?
>

By looking online! :)

Basically, any VPN that you can use from the CLI is accessible.

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

