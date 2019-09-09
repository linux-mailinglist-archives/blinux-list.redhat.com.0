Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A583ADE28
	for <lists+blinux-list@lfdr.de>; Mon,  9 Sep 2019 19:45:48 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 86CF330A7BAE;
	Mon,  9 Sep 2019 17:45:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0794060BE2;
	Mon,  9 Sep 2019 17:45:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F315024F30;
	Mon,  9 Sep 2019 17:45:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x89HjfX9030703 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 9 Sep 2019 13:45:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5E7E45C21E; Mon,  9 Sep 2019 17:45:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx01.extmail.prod.ext.phx2.redhat.com
	[10.5.110.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 57CCF5C21A
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 17:45:38 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4D60C7575B
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 17:45:38 +0000 (UTC)
Received: by mail-qt1-f179.google.com with SMTP id r5so17208677qtd.0
	for <blinux-list@redhat.com>; Mon, 09 Sep 2019 10:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=SN1CwpSh5wrh83a0VCTZvwhGKUqx3XkBUdqnlfY1pE0=;
	b=JI3SXJg69z8RMDr7Guxxw//YwK76wtdMp46UflwU/IwaDyZLOjJuQa9Q/lKFMF+8mM
	yHHaquOMO1q9NCsgr5ivsIH5uVVzgPXzr7F9/8XfXl72WG4rYPUlfrAQfKJlajJRLHhW
	6izUBS5CTrvysIWa4nal90Ajk25r1Bvk0O6D1VOEItp9K4MiUZ2Bkqxlhly1SVhGAol3
	h2oBwafcbwS4jNLJINJciaGN5rbAPzEqT1CK1S7L0VZONG9thLZj4EFTGCi0ySt6BvN+
	ukeSg7v7Al6gljZ4erSPsR5J5xFKT72cdHJrYQZQIVXa+faQg6tJMayUAvQT/RvtHvIZ
	bH0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=SN1CwpSh5wrh83a0VCTZvwhGKUqx3XkBUdqnlfY1pE0=;
	b=kdvyMtgujrbj5dj+d7AzwfvxZVzxc3uGmS2rAiZyIllOVdNUXYvuw41uXdgN+iZ1Zy
	nYTs/stIDzgcNA5nlrYS90pKm6LSUfWx5j+TbPnTmKfDaJsrvo1WfmZEYL8sh498RxBK
	BnjTzyUVe/mpdvsPJlN+yA/5FvVmquz+/JNC3Ja5vu+tU2Wb16qbHc3GjCSY3yn2j4GM
	R/0MlPKvMBqlwFNOcueuDKT0tixcQ6BLPyk4+6x/x6gNElWtgDah6ZaB7krYrIotj9iQ
	lxJPiDsJ1Aa8SUJyyvWcwjQ+JnRF5JRm/SGJ1YBHEEN/Dnplk3ITJjpO8Fgej7YIl2Qp
	+ERA==
X-Gm-Message-State: APjAAAUDx7Xds1kHVjgoZEiW02suI9T+o5QzHq0fVow+SL7uXX/4S+Gt
	L3MDAEjNbV/lb0AzyWqkEQ7qmBxM0K4=
X-Google-Smtp-Source: APXvYqwyY1Tq2PTbMTEuQ1LWOOFAAfocvRmtaeUmAmmabeBUhM3A10u/womE3lHf69nhdYzgCMDQiA==
X-Received: by 2002:a0c:9051:: with SMTP id o75mr15340168qvo.147.1568051137072;
	Mon, 09 Sep 2019 10:45:37 -0700 (PDT)
Received: from xu4.kyle.tk (cpe-2606-A000-111A-8591-0-0-0-939.dyn6.twc.com.
	[2606:a000:111a:8591::939]) by smtp.gmail.com with ESMTPSA id
	l48sm4317813qtb.50.2019.09.09.10.45.36 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 09 Sep 2019 10:45:36 -0700 (PDT)
Subject: Re: Comunicating from your Linux machine?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
	<53EDACF6-CD22-4D52-A926-00A9B085D663@gmail.com>
Message-ID: <49932ca6-a5e5-7049-0532-cd34efd77803@gmail.com>
Date: Mon, 9 Sep 2019 13:45:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <53EDACF6-CD22-4D52-A926-00A9B085D663@gmail.com>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.25]);
	Mon, 09 Sep 2019 17:45:38 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]);
	Mon, 09 Sep 2019 17:45:38 +0000 (UTC) for IP:'209.85.160.179'
	DOMAIN:'mail-qt1-f179.google.com'
	HELO:'mail-qt1-f179.google.com' FROM:'kyle4jesus@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.119  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.160.179 mail-qt1-f179.google.com 209.85.160.179
	mail-qt1-f179.google.com <kyle4jesus@gmail.com>
X-Scanned-By: MIMEDefang 2.83 on 10.5.110.25
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]); Mon, 09 Sep 2019 17:45:46 +0000 (UTC)

Email and IRC are just about the only options that are customizable for 
a blind Linux user.


Not necessarily. Pretty much anything that can be set up in Pidgin can 
be used. This includes XMPP, which is pretty robust, although some 
versions of Pidgin don't seem to work well with XMPP voice 
communication. There is Telegram, which works at least for text, but it 
may require running in a terminal, unless there is a working Pidgin 
plugin. I can't get the desktop app speaking for some reason, though it 
may just be because I'm missing an accessibility gsettings option.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
