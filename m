Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B5138681B1C
	for <lists+blinux-list@lfdr.de>; Mon, 30 Jan 2023 21:10:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675109432;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=muQzCTJDzv/5XQ/mndk7bEBMNfzT+Abl2Ja2q3bqR30=;
	b=QgRYclyXr0LKfRJ/rXQ0A2hNREXInqxTXJXNP4VaQXQRfb9PGE8V2qX6IbdBsUquCLDLGc
	6XxEXiOs9hxt8/SbtPbQsZ6NBobkRs8HrjheYjE1qwDsgu1+EFf7wyCXt8fXJ3CnkrUWTG
	zs2THol300j9nKVVF18euYhVtWd9D4c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-454-XHSyi1xaMsWVh7bdMUVDDQ-1; Mon, 30 Jan 2023 15:10:28 -0500
X-MC-Unique: XHSyi1xaMsWVh7bdMUVDDQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BB725801779;
	Mon, 30 Jan 2023 20:10:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C344240ED76C;
	Mon, 30 Jan 2023 20:10:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 295941946597;
	Mon, 30 Jan 2023 20:10:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 30 Jan 2023 15:10:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Twitter alternatives for the blind community?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2126.1674833824.8175.blinux-list@redhat.com>
 <mailman.2028.1674835913.8171.blinux-list@redhat.com>
 <mailman.2120.1674865746.8168.blinux-list@redhat.com>
 <mailman.2005.1674869055.8173.blinux-list@redhat.com>
 <mailman.2264.1675091170.8172.blinux-list@redhat.com>
 <mailman.2276.1675095093.8172.blinux-list@redhat.com>
 <mailman.2526.1675096943.8170.blinux-list@redhat.com>
 <mailman.2400.1675097672.8169.blinux-list@redhat.com>
 <mailman.2283.1675106286.8176.blinux-list@redhat.com>
In-Reply-To: <mailman.2283.1675106286.8176.blinux-list@redhat.com>
Message-ID: <mailman.2411.1675109422.8174.blinux-list@redhat.com>
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

The Fediverse is probably the best for what you want. I'm not sure 
whether Pleroma does it yet, but I know Friendica has the concept of 
forums, which are actually groups within the larger community that is 
the individual server or the universe that is the Fediverse itself. 
These forums or communities within a server are accessible from any 
Fediverse application. For example, I have seen posts to the Friendica 
support forum coming from Mastodon as well as Friendica, and I believe 
there have been posts that came from Pleroma as well if I'm remembering 
correctly. There is also something called Lemmy that is federated forum 
software. Although Lemmy apparently has some issues with some posts 
taking extra time to appear, it is supposed to be able to talk to 
Friendica, Mastodon, Pleroma and others, but it is specifically a 
community forum as opposed to a microblogging system or similar, like 
what Twitter does. The nice thing about these forums is that they are 
somewhat similar to Facebook groups, but they are mentionable more like 
Twitter or Fediverse accounts. And the sky is the limit with these. They 
can be as tightly focused or as broad as you would like. Looking at my 
Pleroma account that I have, I see something they're calling lists. It 
does appear that they are somewhat similar to Friendica or Lemmy forums, 
but I will definitely need to play more with this to be sure it's what 
it appears to be.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

