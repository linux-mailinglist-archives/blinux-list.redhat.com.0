Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D695FA440
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 21:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665430561;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LymXDlDCFZOojJ4mvrMFUdEHmgTtilqkPEJXWXT2H0A=;
	b=ZBpXmYNpfjezD6CQrLxC1JmfpCQ7l1sRHwthwOsbLm+xwDGA2dEIk0vSYGDWQSuUhZnDzt
	ZH7GaCk0EU+CwVysUn1HKItYpRVJ16OdjDhD3q/3J/i7UNZodCOyZ323i1oS+9azjdO7kz
	Fx3We0WoA15wdy0xXAeU5G0+RGppltM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-32-pAIJCZVGOT-9ndTdpQsR7w-1; Mon, 10 Oct 2022 15:35:58 -0400
X-MC-Unique: pAIJCZVGOT-9ndTdpQsR7w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C477A185A7AD;
	Mon, 10 Oct 2022 19:35:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B07C240C206B;
	Mon, 10 Oct 2022 19:35:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3A08F1946A48;
	Mon, 10 Oct 2022 19:35:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 10 Oct 2022 15:35:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: TDSR?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.6579.1665417367.6077.blinux-list@redhat.com>
 <mailman.6597.1665417915.6081.blinux-list@redhat.com>
 <mailman.6601.1665418715.6081.blinux-list@redhat.com>
 <mailman.7185.1665419482.6076.blinux-list@redhat.com>
 <mailman.6853.1665423932.6082.blinux-list@redhat.com>
 <mailman.6257.1665425449.6074.blinux-list@redhat.com>
 <mailman.6598.1665425923.6077.blinux-list@redhat.com>
 <mailman.6894.1665427256.6075.blinux-list@redhat.com>
 <71f073b5-00ae-41a0-445d-dc466988f81a@free2.ml>
In-Reply-To: <71f073b5-00ae-41a0-445d-dc466988f81a@free2.ml>
Message-ID: <mailman.6266.1665430552.6074.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Reading further, I see that Vojtech Polasek is in fact a software 
engineer at Red Hat. Fegora is an unofficial spin not affiliated with 
Red Hat, but it does include another rpm repository that has some 
Festival voices and other useful applications. It would be great to get 
RHVoice and possibly Mimic3 into this repository as well. Kickstart 
files for building Fegora isos can be downloaded by

git clone https://github.com/vojtapolasek/Fegora.git

It seems there are a few things that have been added that are installed 
by default that I personally wouldn't want on my own system, but that's 
the beauty of being able to work from a kickstart file. Just having the 
RPMFusion repositories enabled out of the box and having the shortcuts 
working right away, including one to restart Orca in case of difficulty, 
as well as having all the environment variables configured correctly is 
enough motivation for me to build isos, although I think my builds would 
likely remove the Facebook and Microsoft plugins from Pidgin ... those 
can always be installed later if someone really does want them.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

