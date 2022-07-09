Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBCE56C975
	for <lists+blinux-list@lfdr.de>; Sat,  9 Jul 2022 14:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657371585;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M5hfyqqcrm3qUcUMJnlV0RoeYR+pi6G4w/0qAapH48M=;
	b=i3rx5GJ4W3yezlzPtq0Oz8kJV+DEl8cLLOvij4pJweuxIQbPvVwDatBWU3ATIK39Oj7+Mv
	qdTXdjQTSEXAByhWRNmM5Y0drj4EY24jVDaYQnIaN+2XHpDjCZ7SeKGRt6rXSVyItv/pYb
	jOCT8JtfVKT+jLS7RsC+jI4S53QMd1w=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-580-vYkl_uEcMkGqR8wUHS2dcQ-1; Sat, 09 Jul 2022 08:59:36 -0400
X-MC-Unique: vYkl_uEcMkGqR8wUHS2dcQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F3CA101A56C;
	Sat,  9 Jul 2022 12:59:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B2D78492C3B;
	Sat,  9 Jul 2022 12:59:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 843E11947040;
	Sat,  9 Jul 2022 12:59:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 9 Jul 2022 13:59:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: I3wm, any progress?
To: blinux-list@redhat.com
References: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
 <mailman.32225.1657370151.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.32225.1657370151.111208.blinux-list@redhat.com>
Message-ID: <mailman.31804.1657371574.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Oh sweet


So is there an example i3 config that comes up talking I could grab and 
tweak? I did a quick Google with no luck.


Looking at Solus, since my laptop is on that right now, it's running 
i3-gaps fork, would your I3 config as an example work with that? I want 
to go to something lightweight and lighter than Mate honestly on my laptop.


So....yes, I'l put i3-gaps on and see if you know of an Orca friendly 
config filelapto

On 7/9/22 13:34, Linux for blind general discussion wrote:
> Hi,
>
> Yes, I use I3WM as my daily driver on Arch Linux. The trick with being
> productive with I3 is to configure its config file (mine is in
> ~/.config/i3/config).
>
> The manual is straightforward. Since I do not do the taskbar checking,
> that is where you may have problems for checking notifications and
> battery status etc.
>
> Linux for blind general discussion <blinux-list@redhat.com> writes:
>
>> So, I was told the other week I3 works with Orca.
>>
>> Anyone had any luck with getting i3 to work with Orca up till now? I
>> mean, if it can be made to work, it'd suit my laptop more than a full
>> fledged desktop. So I'm stil curious on this
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

