Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B53AD6805F2
	for <lists+blinux-list@lfdr.de>; Mon, 30 Jan 2023 07:22:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675059723;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QWWLP14Uh8xaAiD09p4kDWirk/Ustewprat1jOTfT3k=;
	b=XY21HwLrQMzIQgCfjL52yabNiHRsAUOzaoKlKIG7oWmspxgb9apgFta74pnf9frInJJguP
	ulUNXoAVO4Mjd8/DLDPVu+VreYhUi1nNc02ewXTwty8FO7OOrcSGL0ZLNKActkTkcL9NIj
	NT/NqE1tuSwswd30tNGcC+8uckBfOY4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-91-TZXfxTQgNRijgP-F--ZDAg-1; Mon, 30 Jan 2023 01:21:59 -0500
X-MC-Unique: TZXfxTQgNRijgP-F--ZDAg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C56D183B3C3;
	Mon, 30 Jan 2023 06:21:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 20BD02166B26;
	Mon, 30 Jan 2023 06:21:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 71E171946595;
	Mon, 30 Jan 2023 06:21:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 30 Jan 2023 01:21:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: twitter alternatives for blind users
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2375.1675057992.8177.blinux-list@redhat.com>
 <mailman.2159.1675059096.8172.blinux-list@redhat.com>
In-Reply-To: <mailman.2159.1675059096.8172.blinux-list@redhat.com>
Message-ID: <mailman.2357.1675059714.8175.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Devin Prater staggered into view and mumbled:

> Thank goodness for Mastodon lol


Problem is I heard that many of the Mastodon front ends were either 
going away or being dropped as well. And Mastodon tends to suffer from 
some pretty heavy-handed moderation that results in public servers being 
blacklisted if someone says something the main admins disagree with and 
it gets by local mods. This is why I prefer Pleroma, Friendica and 
others. They are mostly or entirely Mastodon compatible, many implement 
the ActivityPub protocol more fully than does Mastodon, and moderation 
of course does exist, but it's left up to server operators and users to 
police themselves, rather than some trigger-happy mods at the directory 
level. I know for example that Friendica has a pretty extensive 
blocklist for servers and users that I may find abusive or 
objectionable, and I believe Pleroma also handles this at the user and 
server levels. Not sure about GoToSocial or Honk, a couple of other 
ActivityPub/Mastodon-compatible servers I've looked into recently. All 
of these are easier to set up if you're trying to run your own server 
with the latest software as well. I've been following a fairly new 
Pleroma user, and he said that setting it up was pretty much a breeze. 
Friendica is also quite easy to get going, as was Honk in my experience. 
The best thing is that most Mastodon client apps I tried work quite well 
with Friendica and Pleroma. I didn't try them with Honk, though neither 
Honk nor Friendica have polls, which I do find useful.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

