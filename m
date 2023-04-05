Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7CF6D81D9
	for <lists+blinux-list@lfdr.de>; Wed,  5 Apr 2023 17:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680708571;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SrKVhmMtVVuDslA3sY8q5LuVD4ed0pkPHwVcDCoHSoQ=;
	b=Uz/9+gMq9Vqg8ltymiF8HWon1EG4dRIktVuAO7FzmharVV/1os0pHHIKfI3kthneDJJ+bv
	rJHmDyQ3zVQRUx908KlCfeOvPaNcn6b0E2X3GRXfhT1YK+ynUp0mEYtceD9hlwiagulI6H
	BjmJ70e8aVRPx8+TVnGIAd/2S6Jg5bI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-575-gCQDeO2OMrC0Kxq6KLj4TA-1; Wed, 05 Apr 2023 11:29:29 -0400
X-MC-Unique: gCQDeO2OMrC0Kxq6KLj4TA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 52FEE858F0E;
	Wed,  5 Apr 2023 15:29:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 923F740C6EC4;
	Wed,  5 Apr 2023 15:29:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 500F819465A4;
	Wed,  5 Apr 2023 15:29:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 5 Apr 2023 16:29:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Debian beginner questions/looking for a good rolling distro
To: blinux-list@redhat.com
References: <mailman.1235.1680685726.558769.blinux-list@redhat.com>
 <mailman.1949.1680706766.558770.blinux-list@redhat.com>
 <mailman.2039.1680707830.558774.blinux-list@redhat.com>
In-Reply-To: <mailman.2039.1680707830.558774.blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.2141.1680708565.558772.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The issue with Arch, at least right now for me, is it isn't clear how 
to, on a brand new setup, connect to wifi which is something I feel 
could be addressed.

On the other hand, yes, I have Arch on my other machine, and do love it. 
It's fantastic.

As for what I use on a daily basis?

i3 for a wm

Firefox for a browser

Pidgin for IM/IRC and so on

Text editors

Kodi for a media center

mpv for platying things in the terminal.


No, Solus's infrastructuree isn't all back, the site is, but the main 
server is still down, w.r.t. updates

Et al

On 4/5/23 16:17, Linux for blind general discussion wrote:
>  > On 5/4/23 10:59, Linux for blind general discussion wrote: >> Among 
the major distributions, I would mention mostly Arch and >> OpenSUSE 
Tumbleweed as truly rolling distributions. > > Yes, exactly. I've used 
Arch Linux and found it to be relativey > reliable. Support for screen 
readers has been integrated into the > distribution, including the live 
version used for installation. > > Arch Linux also has an excellent wiki 
(very helpful as a source of > documentation even if you aren't an Arch 
user). > > _______________________________________________ Blinux-list 
mailing > list Blinux-list@redhat.com > 
https://listman.redhat.com/mailman/listinfo/blinux-list >
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

