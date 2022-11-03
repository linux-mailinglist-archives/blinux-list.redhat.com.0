Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22684617E51
	for <lists+blinux-list@lfdr.de>; Thu,  3 Nov 2022 14:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667483232;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HY4XLdtbENdlpzCuARMtcJnlTMWe+WguDUu10jDbN+I=;
	b=D1GvstB5sjhqLJhePd6K3mJEbYeF8pLpLbeJMH4CkZxCtew8TE4I150uYWtOxcyAqAuS08
	z5sQQZKUSbr/iJrXH56MSet0Pjd6s+w+m2ODlgFCZbrIy0yOMvztye0v8XjtJnDHsL7HW1
	mAS7gDAxPOv7uh1dHmIp84+Df1CYRcc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-351-GoJ-NSCqPBCqYZJWERMYdQ-1; Thu, 03 Nov 2022 09:47:08 -0400
X-MC-Unique: GoJ-NSCqPBCqYZJWERMYdQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC5E387B2A5;
	Thu,  3 Nov 2022 13:47:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9B4E21121333;
	Thu,  3 Nov 2022 13:47:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 81C0D1946A68;
	Thu,  3 Nov 2022 13:47:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.200.110.1.12\))
Subject: Re: Javascript for text mode (fwd)
Date: Thu, 3 Nov 2022 08:46:48 -0500
References: <mailman.4326.1667439822.3008.blinux-list@redhat.com>
 <mailman.4292.1667467115.3005.blinux-list@redhat.com>
 <mailman.4321.1667468317.3007.blinux-list@redhat.com>
 <mailman.4503.1667475991.3004.blinux-list@redhat.com>
 <mailman.4358.1667481898.3007.blinux-list@redhat.com>
 <mailman.4328.1667483150.3005.blinux-list@redhat.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <mailman.4328.1667483150.3005.blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.4400.1667483225.3008.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Right, and Python running in the browser will still need JavaScript under it to run web assembly.
Devin Prater
r.d.t.prater@gmail.com

Https://write.as/devinprater

> On Nov 3, 2022, at 8:45 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> javascript is likely on its way out.  Likely replacement python.  It will
> be a good day when that happens since no more your browser doesn't have
> javascript enabled messages on the web.
> 
> 
> 
> Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty:
> soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
> 
> .
> 
> On Thu, 3 Nov 2022, Linux for blind general discussion wrote:
> 
>> lynx and links are open source. Maybe some others may do it.
>> 
>> On Thu, 3 Nov 2022, Linux for blind general discussion wrote:
>> 
>>> Date: Thu, 03 Nov 2022 12:46:24 +0100
>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>> To: blinux-list@redhat.com
>>> Subject: Re: Javascript for text mode (fwd)
>>> 
>>> Do you thing that it should be possible? I think it is but they don't do it.
>>> 
>>> Artur
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
>> 
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

