Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 92328BABD5
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2019 23:47:59 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A73723086246;
	Sun, 22 Sep 2019 21:47:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62A911001B13;
	Sun, 22 Sep 2019 21:47:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 915CA4E58A;
	Sun, 22 Sep 2019 21:47:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8MLlirI026155 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 22 Sep 2019 17:47:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3F207600F8; Sun, 22 Sep 2019 21:47:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx04.extmail.prod.ext.phx2.redhat.com
	[10.5.110.28])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 399C860127
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 21:47:41 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id C587585538
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 21:47:40 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id c3so14926919qtv.10
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 14:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=fizjX4RrWL9Vg3DJMXSaUZsGejUw4cZXGLiMMKn0/x4=;
	b=mui3bxOVwOonMTmqWi4ZyR/fNco+c63XDAL1SCnZlmZEaOeRS4jvfphLx694WKRrBM
	G9q+LY9OQfwn4x8It8nb6Ls5KPNENxCqvL8qGVtGlgiinxny6oMiJdBJOJv80cVIeGhb
	S37gBwY/nvDkFwjROmR+ytKsorrSTZUMqNnSlBslBlEK6NqMVMrSH9dVjtPxy5IEKSoH
	kBn6t12j+CnNrevbkmpzK1i6GCulRcQkvhC6z55ZRnWAuXIms3+5e0y7LWFKJ+gLTkG5
	J4mmoF4z2FjTnkUHeYOc5mOgi+49hJjp0+u6qT3NItapjEtz/9ueBcTopwiLK3Muh+h+
	JLtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=fizjX4RrWL9Vg3DJMXSaUZsGejUw4cZXGLiMMKn0/x4=;
	b=PohUNYpymM+6NJ7RYOjVoXzioeiHUFo7TC9fYXydQnpGWqKIgH1IYy/j+eeOyRAmpJ
	OoBLeTdrGiMZeDGppXuuZJOqc0d8sJ0yTIu3XaGXDBIlG4+Bvl2VtikWdQViJ/lguVNO
	N2e+scRnqcfsuewx2BkWSrw8lnktwwJQU62tSufVxGJGuiYKMnvqeAGJ1dAlUxraVWrY
	Gower0d6iEETc1Vpq4d8iOKX4evOxZ4SGQhyItrgvIAzz1hIJjq8XS09JIqwNY9fgBvs
	r4AO/16+9ITVMn10Xb8dv4h/V1EFw6yvn4VY+ZITMDnV0F7pY6F9TbdcSKY6Zhabvt4f
	4VKg==
X-Gm-Message-State: APjAAAUCO0dd/jkZXvefepw53TdnLaSYe09lgWeaq7YcXdeTq9HhfvnD
	BwLJdJCfxeHKQR2xyNFboPJD17rDEYc=
X-Google-Smtp-Source: APXvYqzhEYl2KIZuC9vAsT3N+OISNLbU560pYeOiGuLASpz74TGbXH/njcwu+zjJK6889b2IC2iz1w==
X-Received: by 2002:ac8:3a86:: with SMTP id x6mr13924764qte.316.1569188859719; 
	Sun, 22 Sep 2019 14:47:39 -0700 (PDT)
Received: from xu4.kyle.tk (cpe-2606-A000-111A-A097-0-0-0-F17.dyn6.twc.com.
	[2606:a000:111a:a097::f17])
	by smtp.gmail.com with ESMTPSA id 54sm5637537qts.75.2019.09.22.14.47.38
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 22 Sep 2019 14:47:39 -0700 (PDT)
Subject: Re: Chromium 77.0.3865.90 and accessibility
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.21.1909221453020.6912@panix1.panix.com>
Message-ID: <f8e47b35-fe04-5170-8222-462a04e85b16@gmail.com>
Date: Sun, 22 Sep 2019 17:47:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1909221453020.6912@panix1.panix.com>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.28]);
	Sun, 22 Sep 2019 21:47:40 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]);
	Sun, 22 Sep 2019 21:47:40 +0000 (UTC) for IP:'209.85.160.172'
	DOMAIN:'mail-qt1-f172.google.com'
	HELO:'mail-qt1-f172.google.com' FROM:'kyle4jesus@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.160.172 mail-qt1-f172.google.com 209.85.160.172
	mail-qt1-f172.google.com <kyle4jesus@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.28
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]); Sun, 22 Sep 2019 21:47:58 +0000 (UTC)

At this point, I have had to start Chromium from the run window with

chromium --enable-speech-dispatcher

Or change the shortcut from the MATE menu to add the 
--enable-speech-dispatcher option. But this is what changes Espeak on 
the rest of the desktop to British English and starts Chromium trying to 
speak English with the Afrikaans voice. Since then, because I primarily 
speak English, I have removed Espeak from my system and just use 
RHVoice. This is how I can confirm that Chromium for some reason is 
causing speech-dispatcher to speak with its first available voice rather 
than speaking with the default voice. My chosen voice for now is RHVoice 
bdl, but "ChromeVox spoken feedback is ready" is spoken by Alan on my 
system. However, once the website I bring up is open, the voice I chose 
separately in ChromeVox is used from that point on.

Imetumwa kutoka machungwa yangu

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
