Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6CF570622
	for <lists+blinux-list@lfdr.de>; Mon, 11 Jul 2022 16:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657550972;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aPIvdMsDnJpX+2tz95ZClJcVqUMWLCPwj3BkUIYCczA=;
	b=Y0VVoInDccTfTR+jnJ2e7Nw3O0a6El8Y900BO7vlCZwQiVBdox8TVS1On6qn8fLVtI7w6w
	8qJ5tQpxo3uxmBPGjKsicBOTOer+JYSDenSgnPFmS9T0+kmyU4hRsPgHVnzKvcrX61/G5M
	j1UDoHL7YBDHZ3P5NEgishxKVyygFL0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-461-EFZQ0a5gPCaoQg657WoRTg-1; Mon, 11 Jul 2022 10:49:29 -0400
X-MC-Unique: EFZQ0a5gPCaoQg657WoRTg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 343EC8032FB;
	Mon, 11 Jul 2022 14:49:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E9C9F492CA2;
	Mon, 11 Jul 2022 14:49:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A01EC194705D;
	Mon, 11 Jul 2022 14:49:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 11 Jul 2022 10:49:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: I3wm, any progress?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
 <mailman.32225.1657370151.111208.blinux-list@redhat.com>
 <mailman.32342.1657440361.111208.blinux-list@redhat.com>
 <mailman.32667.1657446476.111209.blinux-list@redhat.com>
 <mailman.32023.1657544590.111207.blinux-list@redhat.com>
 <mailman.32711.1657550119.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.32711.1657550119.111202.blinux-list@redhat.com>
Message-ID: <mailman.32532.1657550966.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

# I'm currently using flwm as my window manager, not because of any 
specific # features, but because it has the fewest dependencies and 
smallest # disc usage of the Window managers I've tried with the 
aforementioned # script that works with Firefox+Orca with a completely 
default config

# for the window manager(can't remember which,


Back when I did work for F123, we used a window manager called jwm I 
believe it was. As I recall, it worked perfectly in the manner you 
describe, and the installed size on disk was extremely small. We used 
this to run Firefox and a few other applications that we would run 
standalone with Orca running in the background from the startup script. 
I don't remember flwm being available at that time, but I found that jwm 
was very light and had few dependencies also. Running from a Raspberry 
Pi 3 at the time, this is before even the 3B+, Firefox did start up 
rather slowly, but that was because the browser is large and resource 
intensive, not at all because of the window manager. So on machines like 
this especially, it looks like there are two possibilities now for 
window managers that work very well with those tight resource constraints.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

