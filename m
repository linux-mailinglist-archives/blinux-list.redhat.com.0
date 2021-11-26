Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BE145F624
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 22:04:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637960652;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/xnpAp5r3Wv8SrnbDfKDh8uyAL0iif9TaQ/9TIR0fC4=;
	b=Z2xKMQ7gli9ffVzM0hgubhy6T3Pv7mgHYdezzM7DxJNMLKAp3OfLoXoVgxK1zG4524mNSY
	1fJWzzWBghXsPD7VSTT2lmrIcZhLiycHrrCibT3uz2+3FBOekUxp/+oSnPFOZjRl/cSOfW
	wxOygUxUsnYCe7JWLgR0h6GOAwGyvQU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-14-U7hM6iPAMdGxRHtv8N7oKw-1; Fri, 26 Nov 2021 16:04:08 -0500
X-MC-Unique: U7hM6iPAMdGxRHtv8N7oKw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6F5E280BCA8;
	Fri, 26 Nov 2021 21:04:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A378604CC;
	Fri, 26 Nov 2021 21:04:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C4F8A1809C89;
	Fri, 26 Nov 2021 21:03:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQKxAXs018245 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 15:59:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7C8BB51E3; Fri, 26 Nov 2021 20:59:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 762C951DC
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 20:59:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7FBAA801E6E
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 20:59:07 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-289-rrlpIIqONHS_eq4-t02-PA-1; Fri, 26 Nov 2021 15:59:05 -0500
X-MC-Unique: rrlpIIqONHS_eq4-t02-PA-1
Received: by mail-wr1-f50.google.com with SMTP id i5so21147836wrb.2
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 12:59:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=WWfNBfKFtR7H0ppABheVwR4eXG5Y801Hm/8zTUM+Sro=;
	b=HWGPKi+AZQow1psVBOmbDrfpiT56WiKxR2CILsUT228L2S/liLiWwuUdgCPJOhd+Rj
	3vkJV847EI9/yrQMAJPkUs5hB5qBJ9Iw/iSPs9uL2/P+gmG0+3fmNbbrZUEY4gIcIGKY
	dNA3nqOw9QSqDW99s2JRX5B6V9O19KCZ3huMzGWXdfIxokm+5LeZT+Zq8zlQFz9rED2Q
	o7IP3v0NXaeFMVyBuODUZ4f8xA2uZ0wFFkKPbPK/8ITLaQqjMJS533/P4yO0mc+zvTT+
	wadqkhNS6ZSpNr4zcbxAp0Am6naXrDxUTTIkGtz4i0WMxyeuVhB3cx7xVM8LhuoF91Nk
	UgxA==
X-Gm-Message-State: AOAM532FghSUxiqftIoUIGRwnaXMrxnFtAg7xHJsxw/xbx1v3ywYovxJ
	Ski6fbDKuQ+0VoXG8mIeXQZ4doVX+ratlg==
X-Google-Smtp-Source: ABdhPJxfEXPUmg8RGGuTZKuSG2lgGVuP+AbgCuTcAJE3To3AQDTfJID53GlrDZXO6URVWWzJaUnxgA==
X-Received: by 2002:a5d:468f:: with SMTP id u15mr16676761wrq.171.1637960344160;
	Fri, 26 Nov 2021 12:59:04 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	b15sm2008359wri.62.2021.11.26.12.59.03 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 26 Nov 2021 12:59:03 -0800 (PST)
Message-ID: <78e0ef3a-4843-b11a-6ab4-586498b14250@gmail.com>
Date: Fri, 26 Nov 2021 20:59:12 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Jumping from Solus/Ubuntu to Slint...how easy is it?
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So as it says....and given my recent whiffs on qemu, so far *crosses 
fingers* Slint is slowly installing but I'm wanting to know...



How easy is it to adapt to Slint/Slackwware coming from Ubuntu or Solus 
or Fedora or...

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

