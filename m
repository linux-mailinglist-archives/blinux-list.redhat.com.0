Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 84AB9184E48
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 19:01:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584122478;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Wz44nuDWY0WYbeUeiomabHiKWj+bSsOYydpsIevh0Vc=;
	b=UBQxbd07+2k9YMQV+UhFuTLlP3eE0e8l3lKgOyClOp1TN4z+oetjaGOs+7leLz+AX4JsKb
	XndoOA8iT8sONzB8PbzGj9nDESkI74NHk4eeY5TreKyTeavUAFp6tS0jMP/fcLQqttbbWa
	FMkqUPtjWbKzD/iIs7+dzWhDDpM+3GE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-162-V8MzxpcdOYyZuXgNYIQJDQ-1; Fri, 13 Mar 2020 14:01:16 -0400
X-MC-Unique: V8MzxpcdOYyZuXgNYIQJDQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB74D19067F2;
	Fri, 13 Mar 2020 18:01:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CFE019757;
	Fri, 13 Mar 2020 18:01:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B9C551809567;
	Fri, 13 Mar 2020 18:01:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DI16Y6013780 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 14:01:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 69ABB2038B8F; Fri, 13 Mar 2020 18:01:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 64CA12038B82
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 18:01:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 65DCF101A55E
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 18:01:04 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-163-mAOIvIzVPQKPEyEwwhxPLQ-1; Fri, 13 Mar 2020 14:01:02 -0400
X-MC-Unique: mAOIvIzVPQKPEyEwwhxPLQ-1
Received: by mail-oi1-f175.google.com with SMTP id g6so10341727oiy.1
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 11:01:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=So+54PRxKcsY1tpL/s2/RRPc0n0I4fcene8q4nDFS/0=;
	b=P8UIDXw2DG4vp5//4DDtnRxP7Cj/wmrEeMqH9wHo+VhQMW3RCBvirvP4RIlcRWrxQ8
	eTfYGIwEQh9PNloFlKLiEZ+v7EllMXw8ra9ubGkp7tb2f8KQ1zmg93VcYnu1np0yUD1m
	j+6rjhrZInNHOahXGPH+rLrTpDMP2pol+9dsJ4qsWXe6vaBe312/yyY/TEqVk6nR36X2
	QLnKAKs6N+01IvX/CWPzOHrXsh/N+L0h9JGjP1eB6wjkZpW36T/j4Qoipl1/RGZbaBLo
	sBv5CLyNPaXXA1p/Tdqhu5zVl94/LIKgErcceNGrSwa9RpvuLqv8zKgeTn6uaTFCNN2s
	FJqQ==
X-Gm-Message-State: ANhLgQ1lU8ze6YDpFbBcgpaWvOTFqHxcin2zg4mUTxyvummfF5xmrm2v
	BABYHT+8TKLnXWnawRTgnb8f96Xj
X-Google-Smtp-Source: ADFU+vv0hkNVGFcVF6KB5gCZ6xGqrZcbNSv01SDUZXSvakiXmkW8JSujX7CqQ6ZJjEAGk0mKxCRUEA==
X-Received: by 2002:a05:6808:9bb:: with SMTP id
	e27mr2689880oig.36.1584122459659; 
	Fri, 13 Mar 2020 11:00:59 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:1543:e453:a245:6e1?
	([2601:3c2:8200:9360:1543:e453:a245:6e1])
	by smtp.gmail.com with ESMTPSA id
	w18sm13881219otl.60.2020.03.13.11.00.58 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Mar 2020 11:00:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Stormux is born.
Date: Fri, 13 Mar 2020 13:00:57 -0500
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
Message-Id: <983945A9-E650-490B-B357-45B463CB407B@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02DI16Y6013780
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This is very good.

> On Mar 13, 2020, at 8:16 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I'm very happy to see this project continued, and I have already started working on the social media aspect and marketing and promotion. Stormux now has a Telegram channel that will announce news and release notes,
> https://t.me/stormux
> as well as a linked general discussion group at
> https://t.me/stormux_discussion
> Stormux will also soon be available on most of the usual social media channels including Facebook and Twitter. I'm happy to work with this project, and will do my best to keep everyone interested updated regarding its status and features.
> ~Kyle
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

