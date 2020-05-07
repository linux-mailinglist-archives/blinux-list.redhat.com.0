Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 456DE1C8EF0
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 16:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588861946;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FMj+7VQ1nzcZqRVWE0YEoEs2nrzkvxBuuCg///4sm5Q=;
	b=YvC9svFAu7OlFpDLtIM+JIkBQcN+C7XgnK8MVnMfTSH5ZcL+WXij7WmfLThXxtE5dcCji6
	waZqem+Yr4mWf2JV49T/FpaexaVkCsztCUaVRYji5f7D/977SK0s0MTOyUzW/b0MuKGVh5
	mde/AGLdl7qs8hZpdEVVwR7NI/c/MQI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-173-W7UVYmowPMK0QqF5dLFH1Q-1; Thu, 07 May 2020 10:32:23 -0400
X-MC-Unique: W7UVYmowPMK0QqF5dLFH1Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6730618FE866;
	Thu,  7 May 2020 14:32:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B802462952;
	Thu,  7 May 2020 14:32:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 345C81809542;
	Thu,  7 May 2020 14:32:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047EW229028969 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 10:32:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4108B10BC2BB; Thu,  7 May 2020 14:32:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C2C2103F26E
	for <blinux-list@redhat.com>; Thu,  7 May 2020 14:32:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A8BF800A13
	for <blinux-list@redhat.com>; Thu,  7 May 2020 14:32:00 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-221-5FtCRQzVP1K19lwsqIA4kw-1; Thu, 07 May 2020 10:31:54 -0400
X-MC-Unique: 5FtCRQzVP1K19lwsqIA4kw-1
Received: from spot.local (spot.local [IPv6:fe80::85b:cbb9:d06e:2fce])
	by cfcl.com (Postfix) with ESMTP id 9016DDEF33B
	for <blinux-list@redhat.com>; Thu,  7 May 2020 07:31:51 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Anything besides vanilla Arch?
Date: Thu, 7 May 2020 07:27:49 -0700
References: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
To: blinux-list@redhat.com
In-Reply-To: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
Message-Id: <5D2DB0EA-D8FA-4CF5-98B1-1CFABF15DCC9@cfcl.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 047EW229028969
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On May 7, 2020, at 03:22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Are there any Arch based distros we can actually install without sighted help?

Stormux (https://stormux.org) is an Arch-based system that runs on the Raspberry Pi 3 or 4.

-r


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

