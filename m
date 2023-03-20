Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B955F6C24FB
	for <lists+blinux-list@lfdr.de>; Mon, 20 Mar 2023 23:57:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679353074;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LPgo4194V2wbJag+2GkmbTmK3ZZbPHjd9MyrKl34hmQ=;
	b=ciPyL/ECkVjluUB7569QkzpKYharVJ9TFomle3+T0Sl2pVUWCCRQgrr7jnDiiO47iUDkSL
	jeIoujRTmbuzQl/3qCQ4sV7NPUp538Vyw1/+FtsMRJXh8UUsshrtt5mmQqYOchNENeNijQ
	HUfP6SWrO66l+WFAnnC4Zlb0UFuPG1Q=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-512-2eavSCN1N7WGzH1u7qGoJA-1; Mon, 20 Mar 2023 18:57:51 -0400
X-MC-Unique: 2eavSCN1N7WGzH1u7qGoJA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8CE873C0F660;
	Mon, 20 Mar 2023 22:57:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4BE3CC2122;
	Mon, 20 Mar 2023 22:57:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9B51C19465B3;
	Mon, 20 Mar 2023 22:57:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: Blanking out screen on Ubuntu Mate
Date: Mon, 20 Mar 2023 17:57:29 -0500
References: <mailman.399.1679323586.636365.blinux-list@redhat.com>
 <mailman.465.1679337140.636363.blinux-list@redhat.com>
 <mailman.403.1679338776.636366.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.403.1679338776.636366.blinux-list@redhat.com>
Message-ID: <mailman.425.1679353064.636358.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I had problems with 20.04.

> On Mar 20, 2023, at 13:59, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I've had no trouble with either version, but I did hear some people were having issues with 20.04.
> 
> 
> I've only tried the 6 month releases up until this point, Ubuntu was not something I ran in production, most I used arch or Fedora.
> 
> On 20/03/2023 18:32, Linux for blind general discussion wrote:
>> Curious, had you any trouble starting orca during installation?
>> I had trouble with ubuntu mate 20.04.
>> 
>>> On Mar 20, 2023, at 09:46, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>> 
>>> Hello,
>>> 
>>> 
>>> I am running Ubuntu Mate 22.04 on my Star Labs Starbook, and would like to black out the display while I am using the machine for privacy.
>>> 
>>> 
>>> Due to Ubuntu Mate's auto brightness settings, the script I had made previously to do this on arch, which would write to the /sys/class/backlight/intel_backlight/brightness file no longer works.
>>> 
>>> 
>>> Does anyone have a way of doing this on Ubuntu Mate?
>>> 
>>> 
>>> Thanks,
>>> 
>>> Aaron.
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

