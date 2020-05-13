Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 382A01D17CE
	for <lists+blinux-list@lfdr.de>; Wed, 13 May 2020 16:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589380934;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lbBuKzo1J+FqoxxLqN1xw1lHSSY5+vaUQdFUg3RAEjI=;
	b=PqX2SvnDY0hiE45YcHhRQLxE9XpeQplbCP4oxGSENd3XliZaq+Id3+7d4V8bmojsOGkcCs
	3FGwHv/gHpiwdhfRz7cY28aA0l85B89fZuVh7dPaSwRMf2rLw6P3vWCbnIc5LggUe7G53w
	aKSs/lFEEVlEFirdDx+J8iW77MHB7n4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-CUR-2K7OOJWu07CpmXQv8A-1; Wed, 13 May 2020 10:42:12 -0400
X-MC-Unique: CUR-2K7OOJWu07CpmXQv8A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1B531B2C987;
	Wed, 13 May 2020 14:42:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 466C85C1D6;
	Wed, 13 May 2020 14:42:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 36B074E565;
	Wed, 13 May 2020 14:42:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04DEeYHh029379 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 May 2020 10:40:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 099CC12F78C; Wed, 13 May 2020 14:40:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E828B12F786
	for <blinux-list@redhat.com>; Wed, 13 May 2020 14:40:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D2241859160
	for <blinux-list@redhat.com>; Wed, 13 May 2020 14:40:30 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-151-eCu9A1fpNfKvhjsHiEJtMA-1; Wed, 13 May 2020 10:40:28 -0400
X-MC-Unique: eCu9A1fpNfKvhjsHiEJtMA-1
Received: by mail-qk1-f176.google.com with SMTP id f189so11864249qkd.5
	for <blinux-list@redhat.com>; Wed, 13 May 2020 07:40:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6+WNsE0UAT+D9vreBq3Ng4MB9O4d9nS5nvHT0S8O6HI=;
	b=QkhVjDMhA9Lv7iYwl408Asn79I7UJ53oEhzuVVcoGjcv/WKpGjNjxffGm+XkmrcAEg
	EUgJoBNz0wdiL0xc8JhavYYD4dWV9LNeEmZzWqhqtWDfE0ACs34L3jYwXTOahhAnkdZy
	JibIJF+w8FxnN1nx+z6mwxQyFBBsHGC72KLy7/5PUKcsPGH9iFEusI0v6gVquv+nEvGx
	AdXn7cXSB/bhlYCC6dyBhsVEHP2G2ZFSWOYv86lRDxXAQLWzZHNdEz3iOtS/H+KDmbyU
	AXGgW2CUIEdDvzG2bYwiscxim2HFFTOOBOoFcDOvjK6Gb4lxjXmU9Yx+dNSyLvzF/4QK
	pADw==
X-Gm-Message-State: AGi0PuazrPlalW7r8jMAEZtSi5RjfSX4aZhy/BPO5M2o1igMhtFzATOe
	dhbgS5pVlhLeeOS4gU5Uz30WUzADu4M=
X-Google-Smtp-Source: APiQypKs5AVNX7XjhxicefECvCUu3XTaqF+sZy3x3a3ID0eoCAov5oDcTinbuAc3hcWNShEMYtPO6g==
X-Received: by 2002:a37:64c9:: with SMTP id
	y192mr25065448qkb.406.1589380827441; 
	Wed, 13 May 2020 07:40:27 -0700 (PDT)
Received: from xu4.kyle.tk
	(2606-a000-111a-8d0a-0000-0000-0000-065f.inf6.spectrum.com.
	[2606:a000:111a:8d0a::65f]) by smtp.gmail.com with ESMTPSA id
	h188sm14041687qke.82.2020.05.13.07.40.26 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 13 May 2020 07:40:26 -0700 (PDT)
Subject: Re: b s d and orca
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
	<b12267b0-944d-d609-53dd-11e9375f002d@gmail.com>
	<FCD3A752-75FC-4A33-BEAE-D96D42DB15DB@gmail.com>
Message-ID: <b85fb8d0-a4ac-e83f-c82c-38a7886b6bdf@gmail.com>
Date: Wed, 13 May 2020 10:40:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:68.0) Gecko/20100101
	Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <FCD3A752-75FC-4A33-BEAE-D96D42DB15DB@gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I'm glad GhostBSD is still around. Did you get it to speak?

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

