Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4924D1B6A
	for <lists+blinux-list@lfdr.de>; Tue,  8 Mar 2022 16:13:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646752414;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MvpLFlSpsxgJAMeZjcdWVjsXwzdWAaisRufP6rINdS4=;
	b=h+SbOG0XzwTW0M4V9AgzXyGjwssFC8zjClIcLQ4hv+cM+dXVZioJTl57dndn0BjecCdsjN
	F418m4H8lStZQ8RxgMqyWWyFcMji7LRADDygyt/kbEICLhCub0bWtitTJgzd9Hc2rkY2O5
	VDcsSFd3brP95LHRZfzEPV/c+eEdXGk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-91-RSSgG9-uNBeT6fNwTGGBQQ-1; Tue, 08 Mar 2022 10:13:32 -0500
X-MC-Unique: RSSgG9-uNBeT6fNwTGGBQQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AECBC10F9713;
	Tue,  8 Mar 2022 15:13:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E73C6401DBE;
	Tue,  8 Mar 2022 15:13:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 52E221932109;
	Tue,  8 Mar 2022 15:13:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 8 Mar 2022 15:12:58 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Kodi and Kodi screenreader, any updates/luck?
References: <mailman.357.1646744655.111209.blinux-list@redhat.com>
 <mailman.302.1646745964.111210.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.302.1646745964.111210.blinux-list@redhat.com>
Message-ID: <mailman.366.1646752394.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That's a good solution, unfortunately it's running into one giant issue.

The attitude of well Kodi's already on my smart TV, why do you need to
install VLC. Which is a fair point however. I'll try that setup and see
how it goes, but I'd also like to seee if there's been any progress on
the screenreder for Kodi as well however. I mean, I could downgrade Kodi
but I'd run into the same issues with it and make things more
complicated though.

On Tue, Mar 08, 2022 at 08:25:35AM -0500, Linux for blind general discussion wrote:
> I've had the best luck with minidlna on the machine I want to act as my
> server and vlc on the streaming players, TV's and computers that I want to
> play my music and videos. Not sure about photos, but I think that works as
> well. The important thing about this setup is that it doesn't need a
> separate screen reader, since vlc works with most screen readers with little
> to no issues.
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

