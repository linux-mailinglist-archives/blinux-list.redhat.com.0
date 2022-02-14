Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE34A4B50B7
	for <lists+blinux-list@lfdr.de>; Mon, 14 Feb 2022 13:54:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644843248;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0YmgMo8kylV9cK/O+O0mm0jyvrE9rkLKBx7ahS3bQZ0=;
	b=gTo1rmFPn36vIBaYIWBkzxHqqWtCSlTbbn0dFCMouJ+6WHFPdEwEoWgNGPr3zDZt+2/E0j
	UaI5EEObD1Tyfl0auMDJrDHMKf+xNnFdYJL6Z2qmDZoD896LWRlit7XkbfKR+4delgWJQ/
	1LTWbi5d5PsYQBmuzqvEdDwHcV57Z0c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-224-DLTUOtIJNkaYCsYYoavJQA-1; Mon, 14 Feb 2022 07:54:05 -0500
X-MC-Unique: DLTUOtIJNkaYCsYYoavJQA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 63B061898296;
	Mon, 14 Feb 2022 12:54:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2BDE2A176;
	Mon, 14 Feb 2022 12:53:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E77BD1806D1D;
	Mon, 14 Feb 2022 12:53:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21ECqnXW005417 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Feb 2022 07:52:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 99A9240C1241; Mon, 14 Feb 2022 12:52:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 95C7E400E12C
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 12:52:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7CEB3185A79C
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 12:52:49 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-372-HT7-A_yfPYSddTInLJkWAQ-1; Mon, 14 Feb 2022 07:52:47 -0500
X-MC-Unique: HT7-A_yfPYSddTInLJkWAQ-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id C3D2D1BBDFB
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 12:52:45 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id AMXQoQcq5kPN for <blinux-list@redhat.com>;
	Mon, 14 Feb 2022 12:52:44 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 7124A1BB0B2
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 12:52:44 +0000 (UTC)
Message-ID: <0bee2738-933b-fa95-05d6-cdaa8f2ef41a@free2.ml>
Date: Mon, 14 Feb 2022 07:52:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: How do you customize the way punctuations are pronounced in Orca?
To: blinux-list@redhat.com
References: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
	<6076529C-A57A-4E14-99A5-7F410CCFAC9A@cfcl.com>
	<ddc1a3ea-835c-1bfd-4060-d508340a664c@free2.ml>
	<CAO2sX33gs-8HKqEaQM1bKtsbENXbOAsfb6aXncd7ow589gMG6A@mail.gmail.com>
	<A0A83FD5-6722-4C55-A48A-A6D4CCE04F83@cfcl.com>
In-Reply-To: <A0A83FD5-6722-4C55-A48A-A6D4CCE04F83@cfcl.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

IIRC, the technical name for "#" is "octothorpe", but I doubt that 
anyone would want their computer to announce it in that fashion :-).


Bill Acker would probably have wanted his computer to announce it that 
way. He had octothorpe.org for years. Ran his email and telephone 
service through it an all that, right up to the day he passed. I always 
thought Speakup should have pronounced it that way as a nod to him, 
since he did a lot of work with it as I recall.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

