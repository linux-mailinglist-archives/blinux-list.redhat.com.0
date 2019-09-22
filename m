Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id C9950BAC18
	for <lists+blinux-list@lfdr.de>; Mon, 23 Sep 2019 01:27:51 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D40C13D3C;
	Sun, 22 Sep 2019 23:27:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 352875D9E2;
	Sun, 22 Sep 2019 23:27:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 28D021803B37;
	Sun, 22 Sep 2019 23:27:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
	[10.5.11.15])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8MNRgLC029782 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 22 Sep 2019 19:27:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1BCA35D713; Sun, 22 Sep 2019 23:27:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx30.extmail.prod.ext.phx2.redhat.com
	[10.5.110.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1707A5D712
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 23:27:39 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 5092F20E6
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 23:27:39 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id 3so12673198qta.1
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 16:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=O5HEtiLpyFpLxdIR8muJ+yG6VGDbcXemyj8PXmWG404=;
	b=clEBE/8ehpxUh2kkPYyoIhEZJ9aG/1WWoBy/gV1XKhRwZl9aT0sYKcfWvQly+JzeQk
	B3c7QZHd0OKJqCUg8YOq9U9ePw3Ta91lAzO6MtVcvFV9FgcYsxEK3tu+gwNH0H85D7CO
	u5VAdN7VBkE8QzjxCeo4v3zcpekdSutprC7RIlbJdjxHOc9xQO0Pih8ix1ZvM68IDOOZ
	VkAwuU0SZeQJsyIW4O7zxat7o5moTGiJk4yg8W1f2l1iqGoEauh8kGc/0k1X1p044ONU
	GFH7/vWimU9l9p9WhFaQce+qDOv7UpB1Qb19eh49a41B+5QFvDT2RE636VEZvzQgJgIA
	9UDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=O5HEtiLpyFpLxdIR8muJ+yG6VGDbcXemyj8PXmWG404=;
	b=pzLPlAc34aftqMDIAAmAUTqwZBGanpy5S9qBjmVdy9dZ7FpsNHIoBALtrMYFunXgRo
	Enw5K7Wo5qgeuA+9KciulG2iv6sCibtgeVMPNa9YSez2euUCePa3X3PWlpzD2ziY0NYY
	R0sIw1VgkUnvXkL8V5PMDHCCk6kueQicv+mC7EkncOrjRAzE32YDlFtO5X1na0gNWI3z
	QTAngz4jjRfvLeWkDTrEVPyvVOzeaxNyI38A1BXAjDzMx8bhh3in59wFSncd1fQxnPXV
	nMnOIQs4CHxbdcAJ85pAQyaw1Ylr9gr3dixGnlyC1of2Cu/1yxFomHH9FFVEEsGH+9Na
	f77g==
X-Gm-Message-State: APjAAAUbI77Zig2M44UpBp5SBiSQNiAB64Qcw9YjqySHm0oMMqMUqzpU
	QY8AKB4E4uc/CV0pJ55v3U4H5amBBvU=
X-Google-Smtp-Source: APXvYqztIuKlSBNRK9VxwlnSQET74XQWjr0T6n7F1PfSbGJa5icrSKd85ZjldcMaddkBifOYnqVd+g==
X-Received: by 2002:ac8:1767:: with SMTP id u36mr14574905qtk.152.1569194858076;
	Sun, 22 Sep 2019 16:27:38 -0700 (PDT)
Received: from xu4.kyle.tk (cpe-2606-A000-111A-A097-0-0-0-F17.dyn6.twc.com.
	[2606:a000:111a:a097::f17])
	by smtp.gmail.com with ESMTPSA id k17sm5144183qtk.7.2019.09.22.16.27.36
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 22 Sep 2019 16:27:37 -0700 (PDT)
Subject: Re: current chromium version a dumpster fire!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.21.1909221404340.29542@panix1.panix.com>
	<3990292b-2a12-b967-545a-be6e03ec2f6d@gmail.com>
	<alpine.NEB.2.21.1909221856070.17569@panix1.panix.com>
Message-ID: <39a0dc4d-b0a3-cbba-ff1e-c9e905e983e4@gmail.com>
Date: Sun, 22 Sep 2019 19:27:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1909221856070.17569@panix1.panix.com>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.71]);
	Sun, 22 Sep 2019 23:27:39 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.71]);
	Sun, 22 Sep 2019 23:27:39 +0000 (UTC) for IP:'209.85.160.180'
	DOMAIN:'mail-qt1-f180.google.com'
	HELO:'mail-qt1-f180.google.com' FROM:'kyle4jesus@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.097  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.160.180 mail-qt1-f180.google.com 209.85.160.180
	mail-qt1-f180.google.com <kyle4jesus@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.71
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Sun, 22 Sep 2019 23:27:50 +0000 (UTC)

Try removing ~/.config/chromium. That worked for me. Now I run

chromium --enable-speech-dispatcher google.com

and it works perfectly. It speaks using Alan on my system, but that's 
because he is the first available voice. Yours will likely try to speak 
English with the Afrikaans voice, since that would be the first voice 
available on a system with Espeak installed. The thing is I also heard 
no speech with Chromium 77, either with or without 
--enable-speech-dispatcher, until I removed ~/.config/chromium. Once I 
did that, I ran it again with the --enable-speech-dispatcher option and 
it heard speech that has persisted since the website was open. I hear 
all expected speech now, whether I press the tab key to focus the next 
element or I hit alt+shift+arrows to navigate the page. Hope this helps.

Imetumwa kutoka ukuta wangu

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
