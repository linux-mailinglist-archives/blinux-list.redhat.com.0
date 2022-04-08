Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFAE4F9379
	for <lists+blinux-list@lfdr.de>; Fri,  8 Apr 2022 13:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649415975;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wIbeQnXrfhRU/DXTckgLkaa9NF1tyAws5y2l1/Fg2+k=;
	b=PQT1rTPJRyNTlFmt3zPRaZuacBL/DJB5tx4O8PuNiyaZH9pq2K0lhICd+F9Jd+Z1M5jzUe
	VClsyRhhFaxZVpq8iU6Ttes3cjUYcmVedP3UuUJQ3/Rr1WkW46dN4BY7ucft/+e0TbnlQk
	MQIkNX5//xHTfYAkXJ1P7Q9dtzJ7hYc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-2-hArX-QxoMLqSBKuoekI3dQ-1; Fri, 08 Apr 2022 07:06:11 -0400
X-MC-Unique: hArX-QxoMLqSBKuoekI3dQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 38B23801E95;
	Fri,  8 Apr 2022 11:06:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 460117AE3;
	Fri,  8 Apr 2022 11:06:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 93AC21940348;
	Fri,  8 Apr 2022 11:06:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 8 Apr 2022 13:03:47 +0200
To: blinux-list@redhat.com
Subject: Re: Good Orca friendly terminal file manager?
Mail-Followup-To: blinux-list@redhat.com
References: <mailman.7330.1649379323.111201.blinux-list@redhat.com>
 <mailman.7202.1649381532.111209.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7202.1649381532.111209.blinux-list@redhat.com>
User-Agent: NeoMutt/20211029
Message-ID: <mailman.7390.1649415962.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I use nn, though mostly on the terminal.

nnn is accessible both on the terminal and on the desktop with orca. The only quirk with it is that when a directory has only one item, Orca won't announce the item.

nnn has a simple listing of files to the extent that it wraps all the way to the top or bottom when you are scrolling.

Ishe

On Thu, Apr 07, 2022 at 08:07:39PM -0500, Linux for blind general discussion wrote:
>Tim here.  I've tried several (mc, ranger, and "nnn"), and while mc &
>ranger are powerful, I suspect the simplicity of "nnn"
>(https://github.com/jarun/nnn) will work better with a terminal
>screen-reader.  It has grown a lot of features since when I first
>tried it, so it might be a bit heavier and less screen-reader
>friendly now.
>
>That said, I tend to just use the standard command-line to manage
>my files most of the time, and that is exceptionally accessible.
>(grins)
>
>-Tim
>
>
>
>
>On April  8, 2022, Linux for blind general discussion wrote:
>> I thought I asked this before, but...
>>
>> Is there a good, Orca friendly file manager laying around? I can
>> live with Caja or pcmanfm, but I'm wondering if there's a good
>> terminal based file manager that works with Orca?
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
>_______________________________________________
>Blinux-list mailing list
>Blinux-list@redhat.com
>https://listman.redhat.com/mailman/listinfo/blinux-list
>

-- 
Good people do not need laws to tell them to act responsibly, while bad people will find a way around the laws.
- Plato (427-347 B.C.)

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

