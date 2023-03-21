Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5B46C382E
	for <lists+blinux-list@lfdr.de>; Tue, 21 Mar 2023 18:31:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679419864;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dgtt/4lp/Mp2Bu0NVLgmyjWbtnk1J4v4SqCDdp9ZF08=;
	b=MO2y7JMGwWu4D/DTudlFGxjghIT7CrR039PfKzqDoMQgJosPffQyCSroCCSEchuTN6Fs4A
	PhrVRHfnl7hYz6ovcBVW6QZt/eyF0idXF2MD998ZDsjnUQOYzjUPBDhnka8SYNkcxSbH1Z
	UwcT0ntBQe2gbnYSUAvUBaJw3DyZrf0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-459-lr7oaFiQO0eTINSeHUp58w-1; Tue, 21 Mar 2023 13:31:03 -0400
X-MC-Unique: lr7oaFiQO0eTINSeHUp58w-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE3F0185A7A4;
	Tue, 21 Mar 2023 17:31:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A8825492C14;
	Tue, 21 Mar 2023 17:31:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 41FF319465B6;
	Tue, 21 Mar 2023 17:31:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 21 Mar 2023 13:30:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: alpine linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.609.1679395599.636362.blinux-list@redhat.com>
 <mailman.518.1679398319.636361.blinux-list@redhat.com>
In-Reply-To: <mailman.518.1679398319.636361.blinux-list@redhat.com>
Message-ID: <mailman.649.1679419859.636365.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

yeah it was not showing up in my router DHCP devices list.

On 3/21/23 07:33, Linux for blind general discussion wrote:
> On 3/21/23 11:46, Linux for blind general discussion wrote:
>> So I have been trying to work on ways of getting accessibility into
>> alpine linux. Maybe someone can answer this strange issue for me. When
>> loading the alpine iso on my laptop i had the idea to install alpine
>> over ssh. I have a connection to the internet because I can add packages
>> through apk witch is the package manager in alpine. When I tryed to put
>> dropbear on for ssh the laptop is not showing up on my network despite
>> being hardwired.
>>
>
> If by "show up on the network", you mean "is not accessible through SSH"
> it might be because the service might need to be started.
>
> -- 
> John Doe
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

