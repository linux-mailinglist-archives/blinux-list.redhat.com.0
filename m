Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C156ADE38
	for <lists+blinux-list@lfdr.de>; Mon,  9 Sep 2019 19:50:03 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id DBEBE10C0924;
	Mon,  9 Sep 2019 17:50:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B2A1460A9F;
	Mon,  9 Sep 2019 17:50:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 192731802217;
	Mon,  9 Sep 2019 17:50:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x89Hnfa0030920 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 9 Sep 2019 13:49:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6E0F2196B2; Mon,  9 Sep 2019 17:49:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx19.extmail.prod.ext.phx2.redhat.com
	[10.5.110.48])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 69058196AE
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 17:49:39 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
	[209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 8A45C306729C
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 17:49:38 +0000 (UTC)
Received: by mail-yb1-f175.google.com with SMTP id t5so4913701ybt.4
	for <blinux-list@redhat.com>; Mon, 09 Sep 2019 10:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=4Ptvuc6mRo0PfYU9lKNGOM3IgprEpxZWehWFdfn7A80=;
	b=iSvccXK0uHvSqX1H13VrI84reXRctVWHOZgTlvrj2ia9i0BOA86fvRx8Qy94zPk/CR
	dfSyPSdeiB9QkU1rq2SPYwS5xWmUL9c7mrfayUxYw1vN6LDYmdJPHs+VMeLV/vQBJ7Wi
	NmMTY18FcT48MIVbGXBJf4Oxehsh52x1E3Uyn43Z1e5YeYZMX4oGiGkmMPONiXcARVdi
	97ivu8M/A7N1duDhyo9Xb7mfza6TSbjgrPCUkQ+SG0WwQ/kLO1s99xtUuxl2o/ITwCWe
	NhsWo7+12kEOKyZstRTa39OaGIeNnDbMTWgEwVg1u3dC8qtz6sYB5AD5OUKFoqQH/GsJ
	WcEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=4Ptvuc6mRo0PfYU9lKNGOM3IgprEpxZWehWFdfn7A80=;
	b=V80n/3HYdR66SfrKXToI8a9p69sl2AS0Lwqh2frp3CCxitQmvOszfVCvL0eJp6RaGS
	Rh4fyRpQSqh1l+rOK4XGvERpKEOAqDOdSq/2PSzdBMT9m2HYG4WL+gDrmQ2p5tudYpJJ
	2pRaqiRIHSZ7fWAqx0N6tmlM1lzU3cW22FZjEAevQ6Va3Oqh7ef4LPhQDWGBv1Vw0pth
	hHpk73bv39ECFfw4KlbuHRXSdwuTGN0HsJ6pTesx/t4+Ysi0XuIygU/LOlsSXJACubwh
	IyTaJnzIqxOUx2OyaHQvSgsPZYS4VJG6xA1oE31h/fG+caQITD1YvmhbGklQ6NjUgF7V
	O+8w==
X-Gm-Message-State: APjAAAUPegVxGwQ+wae65jxt/4Bb+5jAMZLtK5M9Ym+XfxcZ3tygNHOg
	5uzPKFkuqKRW0ozFyTX5u4NvPF+smYw=
X-Google-Smtp-Source: APXvYqwELp49YHYlVYZulNMI712xSzYg6TqlRnwnpSUjGoTmNLJEWRkFcwNuQjlOZYeRiySoYF/JjQ==
X-Received: by 2002:a25:2e12:: with SMTP id u18mr15873123ybu.432.1568051377656;
	Mon, 09 Sep 2019 10:49:37 -0700 (PDT)
Received: from xu4.kyle.tk (cpe-2606-A000-111A-8591-0-0-0-939.dyn6.twc.com.
	[2606:a000:111a:8591::939]) by smtp.gmail.com with ESMTPSA id
	d66sm3195394ywe.31.2019.09.09.10.49.36 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 09 Sep 2019 10:49:36 -0700 (PDT)
Subject: Re: Comunicating from your Linux machine?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
	<53EDACF6-CD22-4D52-A926-00A9B085D663@gmail.com>
Message-ID: <57970813-70fc-369a-3bcc-ad35defe78c9@gmail.com>
Date: Mon, 9 Sep 2019 13:49:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <53EDACF6-CD22-4D52-A926-00A9B085D663@gmail.com>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.48]);
	Mon, 09 Sep 2019 17:49:38 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]);
	Mon, 09 Sep 2019 17:49:38 +0000 (UTC) for IP:'209.85.219.175'
	DOMAIN:'mail-yb1-f175.google.com'
	HELO:'mail-yb1-f175.google.com' FROM:'kyle4jesus@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.125  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.219.175 mail-yb1-f175.google.com 209.85.219.175
	mail-yb1-f175.google.com <kyle4jesus@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.48
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.66]); Mon, 09 Sep 2019 17:50:02 +0000 (UTC)

Oh I almost forgot ... you can try Mumble, though it's designed more for 
chat room style communication as opposed to one-to-one communication. 
There is also Linphone, but I seem to have better luck with it on 
Android than on Linux for some time now, though I haven't tried it 
recently. Linphone is a SIP application, so it is good for talking as if 
you're talking on a phone, either one-to-one or via your favorite 
conference bridge, and there are many of those across the internet. I 
used to use another SIP phone called I believe it was SFLPhone, but I 
don't know how active that project is now.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
