Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id 18F1119623D
	for <lists+blinux-list@lfdr.de>; Sat, 28 Mar 2020 01:08:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585354137;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=B6dBvScirvOAK5kooq10AtzP9nDQihD8/zlaCTsU5cA=;
	b=M7nUERz6x1CXSEXUZrj+JV6j6sVQIFRpig0VPtqd4NDZTmB/rpjsF5EPtdGB6MtIg/mV7p
	sm6KgpXcAtBV3DQIJkwF3xBG+yhQ3XSnHPEKokM6RHeNtciAHFqu0/eQ077yKfuG5+Cp/Q
	NyexyAVFJm5VtY6AbcXAc+E+08yL+5c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-52-kLRToyugOhm7tXuy9sQjag-1; Fri, 27 Mar 2020 20:08:53 -0400
X-MC-Unique: kLRToyugOhm7tXuy9sQjag-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF819189F762;
	Sat, 28 Mar 2020 00:08:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E949396FB1;
	Sat, 28 Mar 2020 00:08:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C624218089C8;
	Sat, 28 Mar 2020 00:08:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02S08epM025787 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 20:08:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E87B61013015; Sat, 28 Mar 2020 00:08:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E4EA31008B9D
	for <blinux-list@redhat.com>; Sat, 28 Mar 2020 00:08:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 155298007AC
	for <blinux-list@redhat.com>; Sat, 28 Mar 2020 00:08:38 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-266-BUPP-3KAMxiNnTzbuDHCmA-1; Fri, 27 Mar 2020 20:08:35 -0400
X-MC-Unique: BUPP-3KAMxiNnTzbuDHCmA-1
Received: by mail-ot1-f47.google.com with SMTP id a6so11668540otb.10
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 17:08:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=7lIjsImWpOA8Q0fQAjth2BIpQJI5idvdfn7j/+Kotyo=;
	b=fHZlS10VCktNFu2USbPlyfbmzaPaqXQOKvxsIYvSNsnKaKbo0lfiM5debdyZeQQ5KW
	dEen0rcEGIYqb2mzzlJDV+WjDmoVkmsdfoiOaXoPLofltzn1PnMTqzwFD1uiTZ5dRd2C
	zoZaEYW45pixrn8WzyNPJZISHRKcmc3i1PNDU6MvjNkHuLOXSZ8xrokb79LSUzzVfYxJ
	TbXgJeTW9gF2e2/cr0F03QG1tCCy/NIXuIvk4nz+YgNiG5u/4Wap5yqSYsSaNXfiAMm7
	nxyPeZIZdjw+EOyi+1+bP3Nk886m5bCA33f3amsJzxs1pRTmyBCubpitf+VRZSaP0Pqu
	bFPA==
X-Gm-Message-State: ANhLgQ1E61UoAil552rmoTWXS4yvllABgP+XiWl+yIK6xNN7wXgNGLEt
	ooPWrbjHi5xJ2J9HYhtmvIcGOryGec70Zh/c6ad/VQ==
X-Google-Smtp-Source: ADFU+vuIPw8HmiNHPRuqV9yKke9VRLu0m3QJdm9MpIuZHzvixj6GeUev5uvz0K5D3e3qIoVlVyUfseBKJODVfLxOFxc=
X-Received: by 2002:a05:6830:158e:: with SMTP id
	i14mr1021596otr.103.1585354114335; 
	Fri, 27 Mar 2020 17:08:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:1295:0:0:0:0 with HTTP; Fri, 27 Mar 2020 17:08:33
	-0700 (PDT)
In-Reply-To: <20200327231906.GA19889@panix.com>
References: <CAO2sX317wcDpD8e3OWg7_5UvxMWND7urVtyok-9i9Q=PBBZCFg@mail.gmail.com>
	<20200327142702.35209f95@bigbox.attlocal.net>
	<20200327231906.GA19889@panix.com>
Date: Sat, 28 Mar 2020 00:08:33 +0000
Message-ID: <CAO2sX311cFo+YtVcGChymJmM+UPOPjdq_q9mkD-LrOcQ=DHSeQ@mail.gmail.com>
Subject: Re: Convert unwrapped paragraphs to hard wrapped paragraphs when
	there's no blank lines.
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02S08epM025787
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

sed G did the trick.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

