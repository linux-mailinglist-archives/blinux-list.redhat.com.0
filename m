Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A345FA187
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 18:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665417893;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uXLz5MvAjUFfWKWPlrdhQp06kWkgV9ze3B/UdhkXbC4=;
	b=AR1ndDDKN+u/LLfw5y+dseR999LVDutnvg00Kzn3A7U/p1fqdVZTPdOz8svKvkC5D2VTv6
	rqKMqzz63Alk69xtDB8G42mL+4D3wDvfmuU+gWXHngXhEDUe/3t01gwiW4yhPp2DIlwkwl
	bQlhNAuUTHGhZ+qsS6eurCocbrUuAyk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-434-E1bgU8feMLKg-Za9stPCcg-1; Mon, 10 Oct 2022 12:04:49 -0400
X-MC-Unique: E1bgU8feMLKg-Za9stPCcg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 725C280280D;
	Mon, 10 Oct 2022 16:04:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DDEE3404CD91;
	Mon, 10 Oct 2022 16:04:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1CFAD1946A4C;
	Mon, 10 Oct 2022 16:04:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 10 Oct 2022 12:04:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: TDSR?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.6579.1665417367.6077.blinux-list@redhat.com>
In-Reply-To: <mailman.6579.1665417367.6077.blinux-list@redhat.com>
Message-ID: <mailman.6512.1665417886.6079.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Unlike Speakup, tdsr does not require kernel modules in order to work. 
Also, tdsr can run in any text environment from a text-only tty console 
to a terminal running in a window manager or full desktop. It is also 
highly portable, and should run on nearly any OS, although I don't think 
it has been tested on something like FreeBSD. I see no reason why it 
shouldn't work there, as long as speech-dispatcher is installed. There 
is of course a disadvantage in that it does not speak before a shell is 
running and must be started either as your shell is starting or via a 
run window that allows a program to be started in a terminal. This also 
means that for every terminal or text console tty you have open, you run 
one instance of tdsr, which could cause slowdowns on hardware with tight 
resource constraints.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

