Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D061B5953D5
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 09:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660635214;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y21X0zFzmfj2FH19js3k0DzV138a04ckuL7wUVEskwc=;
	b=IINiaEi2Y1MWsyGyrbjMfOcgBNeROjuz7zjM9bvAAnPsCGmpzwIrdOjmIiRMxPvHmIgSoR
	ftuMkmzMR/0uG82ugBzPHYeurT1jW5+RjJiUcuKNa6/QqDTHu4CBSB6Wds8ILpGcWuhW4i
	CcjgJrmRApYndAycBLqOcCjBJNvssXY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-28-pBmpJfRUP2K6Q086Cd-OkQ-1; Tue, 16 Aug 2022 03:33:31 -0400
X-MC-Unique: pBmpJfRUP2K6Q086Cd-OkQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B07DA8039A8;
	Tue, 16 Aug 2022 07:33:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6810940D2827;
	Tue, 16 Aug 2022 07:33:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B04FC1940350;
	Tue, 16 Aug 2022 07:33:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 16 Aug 2022 09:33:09 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Impossible to know sender info
References: <mailman.708.1660592109.10505.blinux-list@redhat.com>
 <mailman.703.1660592414.10507.blinux-list@redhat.com>
 <mailman.770.1660603181.10501.blinux-list@redhat.com>
 <mailman.771.1660604547.10501.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.771.1660604547.10501.blinux-list@redhat.com>
Message-ID: <mailman.801.1660635198.10505.blinux-list@redhat.com>
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Aug 15, 2022 at 04:02:18PM -0700, Linux for blind general discussion wrote:
>> On Aug 15, 2022, at 15:35, Joel Roth wrote:
>> 
>> ... If we're already hacking the From: field, how about
>> including the original name e.g
>> JustSomeGuy via Blinux <blinux-list@redhat.com> ?
>> 
>> If the MTA is postfix, it could be just the matter
>> of writing a regex to do this. (Raises hand to volunteer)
>
>This is a great offer; I hope you can get permission to do it.
>FYI, I think the version is fairly old, so your mileage may vary...

IIRC the problem is the old mailman version that caused the settings of the 
list to be how they are currently. Newer versions of mailman have better 
spam fighting config options...

So how about moving the list to a system where a newer mailman is running?

I host three mailman servers and it would be no problem to move the list 
over there...

Cheers,

  Schoepp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

