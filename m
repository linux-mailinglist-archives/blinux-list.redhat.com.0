Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D81C6C0402
	for <lists+blinux-list@lfdr.de>; Sun, 19 Mar 2023 20:16:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679253403;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=K9dP7i6XSArlTM5zDuEN9+XuXfNRxCAQIHVzxKNlcT4=;
	b=NyF/Srw56dUl64ERsZBKOooDSzoDLEEXOvKNaqV3PfzFByjM0P9bDldTDnFvjtXgCLIhQ+
	JUue6+sSBZiwlq0FDz7j5FHtQCnrO8JfPFgWQymi2oAWlbKOVrZ/OsrIoqEupaWZATR7o4
	v0wBd2RYkBg6c5ZL2q2woAL/sCjyYNw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-264-p4kdkM-ZMlifLGtSWnMo3g-1; Sun, 19 Mar 2023 15:16:40 -0400
X-MC-Unique: p4kdkM-ZMlifLGtSWnMo3g-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8783A3806736;
	Sun, 19 Mar 2023 19:16:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0E4C3492C13;
	Sun, 19 Mar 2023 19:16:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5BAA71946A54;
	Sun, 19 Mar 2023 19:16:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 19 Mar 2023 15:16:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: blinux-list@redhat.com
References: <mailman.236.1679249091.636363.blinux-list@redhat.com>
Subject: Re: Seamonkey 2.53.1X not working with Orca?
In-Reply-To: <mailman.236.1679249091.636363.blinux-list@redhat.com>
Message-ID: <mailman.241.1679253393.636363.blinux-list@redhat.com>
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


On 19/3/23 14:04, Linux for blind general discussion wrote:
> So I've just run into this. Is it a my system thing,or an Arch thing, 
> or did Seamonkey really go and cut out thins to make it play nice with 
> Orca?
>
All I can comment on is that current versions of Firefox and Thunderbird 
are still accessible with Orca, so I don't expect your issue to be 
coming from there.

I don't know whether Seamonkey is kept up to date relative to the 
stand-alone versions of Firefox and Thunderbird, though. In addition, a 
new implementation of accessibility APIs by Mozilla is presently 
available for testing. I haven't tried it yet with Orca, nor checked 
whether it's supported.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

