Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A485315CC
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 21:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653335320;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OM8Kh+u9Ki6jR63KIY2SFRbr0w1t6KrwaX4jjnDo5qM=;
	b=Al7y+Eb8bWMYUOQjEdwqgnLqTqUHyMKPRAXfcgysfca2Jg4TWqyml9h7z1UCEzL6xIW4cP
	3Z7orKkdbEz4WAgu6zsMCrVT+sf4qH+gGSakcG1wnpHsYxkVvOAt8w9PJLOAO6JkGKOGev
	sMNdiXLoJOus2btHRLwtqeXjfC6exhs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-28-xfnjEhqDNjufxPv56nZmFA-1; Mon, 23 May 2022 15:48:38 -0400
X-MC-Unique: xfnjEhqDNjufxPv56nZmFA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3ACC638349A0;
	Mon, 23 May 2022 19:48:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E57022026D2F;
	Mon, 23 May 2022 19:48:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5C5741947072;
	Mon, 23 May 2022 19:48:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 23 May 2022 21:48:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: I'm in crisis, help!!!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
 <mailman.17518.1653310063.111208.blinux-list@redhat.com>
 <mailman.17273.1653321119.111205.blinux-list@redhat.com>
 <mailman.17397.1653321680.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.17397.1653321680.111210.blinux-list@redhat.com>
Message-ID: <mailman.17614.1653335316.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Ok, I'm going "home", downloading Slint again, lets hope it doesn't 
break on me this time.


Warm regards,

Brandt Steenkamp

Sent using Thunderbird on the Linux box.

On 2022/05/23 18:01, Linux for blind general discussion wrote:
> I'll redownload Fedora and see if it works.
>
> Looks like your best bet will be to download the MATE spin and then 
> install GNOME. The version I had already downloaded and tested with 
> the non-speaking installer is the same version 36-1.5currently on the 
> website. The MATE version also says 36-1.5, but its installer speaks, 
> and you should actually be able to convert it to standard Fedora 
> Workstation through dnf. It seems the packages you need will be 
> fedora-release-workstation, fedora-release-identity-workstation, 
> fedora-workstation-backgrounds and fedora-workstation-repositories. 
> Either that or just install the GNOME desktop environment over your 
> MATE install and change your default session on the display manager 
> screen.
>
> ~Kyle
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

