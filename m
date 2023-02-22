Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5404D69F305
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 11:53:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677063222;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=j8YeFBRKtdQUfw+vhYTKg5MBZ2vwMNfdT3ykv5QzJ+8=;
	b=ZreyroVKAX+CzecZCBYzJC/hEXJcy7KzVIw7oauUIQuXmX41cqnYG380YJrBbnJNndVDv8
	KHOgnxRvkYwPsPgQABLADEq4CQ49kjJR5krjXAkACtB3DIQQlrYEQ5D7H3rPytJ4Hzssat
	K495IndMZC6xV4eR4Iy+RSP+625RXjk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-26-P-poBU_mNZyLcA3s6Un9cA-1; Wed, 22 Feb 2023 05:53:38 -0500
X-MC-Unique: P-poBU_mNZyLcA3s6Un9cA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DDD8238221C8;
	Wed, 22 Feb 2023 10:53:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 039254024CA1;
	Wed, 22 Feb 2023 10:53:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B300719465B1;
	Wed, 22 Feb 2023 10:53:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Feb 2023 11:53:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: brave with fedora
To: blinux-list@redhat.com
References: <mailman.73.1676547223.3517.blinux-list@redhat.com>
 <mailman.111.1676561327.3517.blinux-list@redhat.com>
 <mailman.877.1677014920.686539.blinux-list@redhat.com>
 <mailman.935.1677023694.686538.blinux-list@redhat.com>
In-Reply-To: <mailman.935.1677023694.686538.blinux-list@redhat.com>
Message-ID: <mailman.1025.1677063209.686537.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

Am 22.02.23 um 00:54 schrieb Linux for blind general discussion:
> You can put any file with .sh extension in /etc/profile.d and put
> 
> ACCESSIBILITY_ENABLED=1
> 
> in that file on a line by itself. Then restart the computer or just log 
> out of your session and log back in and you should be good to go.

I do not have this environment variable set on Debian but Brave is 
working out of the box. The only environment variable regarding 
accessibility I can find is QT_ACCESSIBILITY which is set to 1.

Ciao,

   Schoepp


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

