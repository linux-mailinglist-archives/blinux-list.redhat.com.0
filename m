Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DFB74430F
	for <lists+blinux-list@lfdr.de>; Fri, 30 Jun 2023 22:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688155642;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WkMAzaKklTkjmE+QTxJgqK/7PVhhOy44hQReljvbJzk=;
	b=cufypBeseheQaTbGBRt20DAMMT1P19sK4EMrk4dl6StKNufuaiD3z8Gx+AbvWKmcGiHKcc
	WkU7ajhPkdpKMQbKZNokF4kF5oxyAqwtrn1dcDztDftqdTbdnkTTAn23KTOcFgnSDS6Sr7
	ndbb34Da9R0tmfyi/r/CIV4+YhvAnrI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-625-fp5cnX4nNQSQnjBY6q-hmg-1; Fri, 30 Jun 2023 16:07:20 -0400
X-MC-Unique: fp5cnX4nNQSQnjBY6q-hmg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0472F858EED;
	Fri, 30 Jun 2023 20:07:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5BA50200B677;
	Fri, 30 Jun 2023 20:07:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9D6821946A49;
	Fri, 30 Jun 2023 20:07:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 30 Jun 2023 15:51:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: v p n and linux
To: blinux-list@redhat.com
References: <mailman.1554.1688134875.3098363.blinux-list@redhat.com>
 <mailman.1673.1688141668.3098370.blinux-list@redhat.com>
 <mailman.1615.1688143995.3098363.blinux-list@redhat.com>
In-Reply-To: <mailman.1615.1688143995.3098363.blinux-list@redhat.com>
Message-ID: <mailman.1488.1688155633.3098369.blinux-list@redhat.com>
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


On 30/6/23 12:33, Linux for blind general discussion wrote:
> Where may I get wire gard?
Generally from your Linux distribution's repository.
> How may I find how to set it up?
Search the Web and read some of the many tutorials on the subject that 
have been written just for people like you.
>
>> On Jun 30, 2023, at 10:42, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>>
>> On 30/6/23 09:50, Linux for blind general discussion wrote:
>>> I have never used a v p n before.
>>> Which one might work well with linux?
>>> Which might work well with orca?
>> I have WireGuard configured to provide extra security in connecting to my server. The configuration is simply a matter of editing files on both sides, and enabling WireGuard to run, so there's no accessibility issue at all.
>>
>> It has been remarkably reliable. I haven't had to touch it since setting it up.
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

