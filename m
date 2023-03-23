Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E96DE6C667B
	for <lists+blinux-list@lfdr.de>; Thu, 23 Mar 2023 12:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679570794;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zP3M+EjTr05DUsZQBhGi8sIHV1dJK1tX8I9g1XJqLPM=;
	b=OWGY5mmKhn21mZRDLfER5uYV3+uXVLibzioVa7QGsslNv9siLbXZleojNv1DL3NSDu1flu
	ro6qfJeoVYD+D/9NclXUjKgN64ae7NicubdcIc2JEQzIBFKWhzQJ+1IbkWE1Qpzwy6+5Dv
	R0Us08D6Ye0+EyaT1Flg68VFLMcGsn4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-79-_zz5fH6SMFuUSfu3Gun15w-1; Thu, 23 Mar 2023 07:26:30 -0400
X-MC-Unique: _zz5fH6SMFuUSfu3Gun15w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05407101A54F;
	Thu, 23 Mar 2023 11:26:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 33F382027043;
	Thu, 23 Mar 2023 11:26:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8F3571946A40;
	Thu, 23 Mar 2023 11:26:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 23 Mar 2023 07:26:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: blinux-list@redhat.com
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
 <mailman.1130.1679509316.636367.blinux-list@redhat.com>
 <mailman.1311.1679555916.636358.blinux-list@redhat.com>
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
In-Reply-To: <mailman.1311.1679555916.636358.blinux-list@redhat.com>
Message-ID: <mailman.1401.1679570769.636358.blinux-list@redhat.com>
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


On 23/3/23 03:18, Linux for blind general discussion wrote:
> Interesting, could you be more specific on this? From those I know, NVDA
> is Python & C/C++, Jaws is written entirely in C++ if I remember correctly.
>
> VoiceOver, just like the two is older than Rust itself, so I guess it's
> written in the Apple's middle-level languages.
>
> While Android has a Java centered accessibility system.

Indeed, I think this might be the first implementation of a screen 
reader in Rust.

I'm not immediately persuaded that writing another screen reader for the 
Linux desktop is a good idea over-all. I think Orca is expertly 
maintained, and that most of the problems of graphical user interface 
accessibility under Linux arise outside of Orca itself.

On the other side, implementing from the ground up with new technologies 
might yield positive results in the end, if the project is sustainable, 
and people can of course contribute to the community however they wish. 
That includes working on a new screen reader project if it's what they 
want to do.

The last time there was a second screen reader for the Linux desktop - I 
think it was called LSR - it was maintained by IBM. Then IBM decided to 
discontinue their work on the project, and no one took it over. So we've 
been in the "multiple screen reader" situation before.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

