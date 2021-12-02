Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 048DF466DC7
	for <lists+blinux-list@lfdr.de>; Fri,  3 Dec 2021 00:30:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638487804;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Jt7daAMUEMe/CUMvIUPYqvsig+iSJJ4v17Uc/BrloeA=;
	b=ICyEBVhuAjoKDLIYTQKPom5crVf8hA68FBz1XIG8RWqo0hGLI6ItLiFuDMfUjeKT+ayxsR
	Vig7+iB+LM9ZEt/wCncl5cmS/VLGIldnOG2or+9mhajcM7MDeKm8fP96BwEexYC5L6saJo
	g5kbUPQ3a6kyCP3oU4P35SvZIdlD3mM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-462-G2qhwk5sOSOD7--WW7mcow-1; Thu, 02 Dec 2021 18:29:56 -0500
X-MC-Unique: G2qhwk5sOSOD7--WW7mcow-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6EA781023F50;
	Thu,  2 Dec 2021 23:29:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E12F45D6C;
	Thu,  2 Dec 2021 23:29:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BAFE81809C89;
	Thu,  2 Dec 2021 23:29:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B2NTinI018925 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 18:29:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 19AE2492C3B; Thu,  2 Dec 2021 23:29:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15625492C38
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 23:29:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F04968001EA
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 23:29:43 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-231-QyChbUgpN1iXDjFneylogw-1; Thu, 02 Dec 2021 18:29:42 -0500
X-MC-Unique: QyChbUgpN1iXDjFneylogw-1
Received: by mail-qv1-f53.google.com with SMTP id b11so1085896qvm.7
	for <blinux-list@redhat.com>; Thu, 02 Dec 2021 15:29:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=J3R2Npp0mTAY0H8n9Hn8j9oXWDkZlEmzSHODgXBmrLw=;
	b=jn9UL2aklh7C+V9FHxZKehTQZDmQ1OoAOSgWji0hBS+VEb7joI4uyogzU71An3NWvO
	b0XBh1pmhXrM6YN7S/N4NixcFetfLEdjkdd6tZ9WvxKq5xWIp6gSOnT5gVJ0yYhKkbNc
	aU+v2ygs7HymIpnFIvRMtet/po70kr6wmxpbSgH5c6/suBadk7tz3ySfshsu8PAXlSuk
	iiQaEVK/JeV9fPp/Nzapq3N9N/YU7wfF5fi8BjZBjFV4qYpMf+hEdDwfeprUglspsGeb
	H6FuHOvRK7C2RnJjVlGZaqmP7Y9KqinzoCHb80bUTQwaAdUWGU7If1cBh7TwqgRfwfOm
	yLFQ==
X-Gm-Message-State: AOAM5337Vsv1qyd4r7urh1uDHWMdCZosR+b1mNnNHRdWNYLc5FGZPhbG
	XxrXbPU1S0BU5KdQhHj7x9YDkJ078n0=
X-Google-Smtp-Source: ABdhPJyRHDhp67nsNsK6y7K7jHHVIHh+Bpmx25FwKbD4QIJmuTpNxbLB0zcSnQk1mz3uB7FzQrsceQ==
X-Received: by 2002:ad4:5ba7:: with SMTP id 7mr16297296qvq.109.1638487781956; 
	Thu, 02 Dec 2021 15:29:41 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id v21sm1052052qta.0.2021.12.02.15.29.41
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 02 Dec 2021 15:29:41 -0800 (PST)
Subject: Re: two questions for the experts
To: blinux-list@redhat.com
References: <1e931725-0939-4d63-41c9-00e509d0b25c@gmail.com>
Message-ID: <af43849a-3949-a189-e294-9e488766fa78@gmail.com>
Date: Thu, 2 Dec 2021 18:29:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <1e931725-0939-4d63-41c9-00e509d0b25c@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

To bind shortcut keys to speech rate, check the keybindings tab. There are 
unbound keys to increase speech rate and decrease speech rate. First, arrow to 
the right once and you will hear keybinding. Press the enter key there and press 
the key you want to bind to that shortcut. Then arrow right once more and tick 
the "modified" checkbox. There is also an unbound keybinding to cycle to the 
next settings profile. Perform the same steps to bind that shortcut to the key 
you want.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

