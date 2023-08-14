Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D0777BB73
	for <lists+blinux-list@lfdr.de>; Mon, 14 Aug 2023 16:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692023038;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lkqYZLrIw5iI4sBEZT9XV13D32nCVwoVXr5PdIVDCO4=;
	b=CQ6S3cgHc0ILGe5faicpt7i2dDVxlRtwDcHEkzPDq2HI2xhe7rFO3d88oTUW/Z7+m9kUXv
	8M/UIQoaJy0gsZOw6xrOwB4Px8EuWWT42DJ2++bd1W6XxJrjbLNDvScPcRee3b3+ow3Ryq
	t1RA25HDmXOvQSob8h041x7jt1a8HDU=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-204-xpr9TkEkOwCH-oLFeyrllA-1; Mon, 14 Aug 2023 10:23:54 -0400
X-MC-Unique: xpr9TkEkOwCH-oLFeyrllA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AD41C3C025AC;
	Mon, 14 Aug 2023 14:23:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 29D252026D76;
	Mon, 14 Aug 2023 14:23:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 26F671946594;
	Mon, 14 Aug 2023 14:23:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 14 Aug 2023 16:21:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: Sound icons for desktop events?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.114.1691937328.2238098.blinux-list@redhat.com>
In-Reply-To: <mailman.114.1691937328.2238098.blinux-list@redhat.com>
Message-ID: <mailman.201.1692023024.2238102.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Cleverson,

What linux system do you have? What sound theme< And what version of 
Mate desktop?

If you want sounds, you can use Sonar sound theme or Smooth sound theme 
what is in Stormux distro. But if you want to play most sounds you have 
to use Archlinux on Intel PC, that|s only option to have sounds for 
opening windows, menus, etc. In Ubuntu or Debian I don't know any way to 
do it.

thanks a lot.

Best regards

Vojta.

Dne 13. 08. 23 v 16:35 Linux for blind general discussion napsal(a):
> Hi, would it be possible, either in Mate, Gnome or any accessible 
> desktop, to assign sound icons to events like opening and closing 
> applications, error alerts, etc.? Mate for example has a sounds and 
> effects settings dialog, but apparently, it only allows me to assign a 
> single sound for general alerts.
> 
> Thanks,
> Cleverson
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

