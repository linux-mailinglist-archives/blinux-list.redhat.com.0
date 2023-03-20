Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E66636C20A4
	for <lists+blinux-list@lfdr.de>; Mon, 20 Mar 2023 19:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679338785;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ScyHu+6pvQgnPKErVC3JRgjdSBvH1B3t/Vi3JESZ1nQ=;
	b=J3WXNvoUTERP1svmfTYHgXSm1crLj9dv3NHGtYrynPymKtdoN1ukiyDxxuzbW/LFvfNfPQ
	xwCyvYEXmc5RvMPG/eMzdyiyT/+Z1y9/EPX77zaTn6gl30F8G1KdWxolHIz+YN8fkd4ocT
	zMMk5ZQ/appywIVXdUjmV7ikzMwp2bc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-177-mzB0-bNeOkOS0A6j5aFiqg-1; Mon, 20 Mar 2023 14:59:40 -0400
X-MC-Unique: mzB0-bNeOkOS0A6j5aFiqg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B420B88B7A7;
	Mon, 20 Mar 2023 18:59:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E9C24C15BAE;
	Mon, 20 Mar 2023 18:59:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 74D4719465B3;
	Mon, 20 Mar 2023 18:59:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 20 Mar 2023 18:59:03 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: Blanking out screen on Ubuntu Mate
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.399.1679323586.636365.blinux-list@redhat.com>
 <mailman.465.1679337140.636363.blinux-list@redhat.com>
In-Reply-To: <mailman.465.1679337140.636363.blinux-list@redhat.com>
Message-ID: <mailman.403.1679338776.636366.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I've had no trouble with either version, but I did hear some people were 
having issues with 20.04.


I've only tried the 6 month releases up until this point, Ubuntu was not 
something I ran in production, most I used arch or Fedora.

On 20/03/2023 18:32, Linux for blind general discussion wrote:
> Curious, had you any trouble starting orca during installation?
> I had trouble with ubuntu mate 20.04.
>
>> On Mar 20, 2023, at 09:46, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>> Hello,
>>
>>
>> I am running Ubuntu Mate 22.04 on my Star Labs Starbook, and would like to black out the display while I am using the machine for privacy.
>>
>>
>> Due to Ubuntu Mate's auto brightness settings, the script I had made previously to do this on arch, which would write to the /sys/class/backlight/intel_backlight/brightness file no longer works.
>>
>>
>> Does anyone have a way of doing this on Ubuntu Mate?
>>
>>
>> Thanks,
>>
>> Aaron.
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

