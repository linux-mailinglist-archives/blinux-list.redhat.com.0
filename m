Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AC26C382D
	for <lists+blinux-list@lfdr.de>; Tue, 21 Mar 2023 18:29:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679419743;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PpyvoEuaJParT/2F6TXKeQUQHOU1cRI89dOodEQBd90=;
	b=Iht4sg00JzOENrqkaoFF+SHl4rX0x9nUobeL5rn03H9XH2RlbQaRsStFz4CFnTxgEHND8e
	DbUGBl7v6J2GtWZzc0hW4rzddYioWJD0Nykdr/zalYBEgYYoVL0EEnHUOiBai64FylurSl
	qb1r4BLk1Oxu/RaAkiN3WzYOuyLOQHQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-515-Dxrpf3PNMV2lhdORjn2N_w-1; Tue, 21 Mar 2023 13:29:02 -0400
X-MC-Unique: Dxrpf3PNMV2lhdORjn2N_w-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D969A2817223;
	Tue, 21 Mar 2023 17:28:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9A16C42C827;
	Tue, 21 Mar 2023 17:28:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CCC2819465B6;
	Tue, 21 Mar 2023 17:28:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 21 Mar 2023 13:28:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: pipewire
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.534.1679395932.636358.blinux-list@redhat.com>
 <mailman.570.1679396999.636359.blinux-list@redhat.com>
In-Reply-To: <mailman.570.1679396999.636359.blinux-list@redhat.com>
Message-ID: <mailman.645.1679419735.636358.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

archlinux and the latest piewire.

On 3/21/23 07:09, Linux for blind general discussion wrote:
> Hello,
>
>
> What distribution and pipewire versions are you using?
>
> Thanks,
>
> Aaron
>
> On 21/03/2023 10:52, Linux for blind general discussion wrote:
>> Hello list,
>>
>>
>> I installed pipewire on my system and I can't understand why orca has 
>> a kind of highcut EQ type sound and how this may be fixed.
>>
>>
>> sethhurst
>>
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

