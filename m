Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 027B1ADDE7
	for <lists+blinux-list@lfdr.de>; Mon,  9 Sep 2019 19:19:17 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 7E71A641DA;
	Mon,  9 Sep 2019 17:19:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D98ED50;
	Mon,  9 Sep 2019 17:19:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3EF0124F30;
	Mon,  9 Sep 2019 17:19:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x89HIvP7029955 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 9 Sep 2019 13:18:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E96BC60A9F; Mon,  9 Sep 2019 17:18:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx15.extmail.prod.ext.phx2.redhat.com
	[10.5.110.44])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E401E60A35
	for <Blinux-list@redhat.com>; Mon,  9 Sep 2019 17:18:55 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D4A2630860C1
	for <Blinux-list@redhat.com>; Mon,  9 Sep 2019 17:18:54 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id c10so473213wmc.0
	for <Blinux-list@redhat.com>; Mon, 09 Sep 2019 10:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=z05OfBrbkww4+AEfQP2Qw3uYWKks/JaUZEswro8UqMU=;
	b=HSjlkm6xphwihKXIrFrzVDk15ntpSCNKaO6DLi3H58dqigi9hdrEZ8ypoRQg2CFLJF
	/Z9aKjhdwVAyr2+rl9/HpEaxPm2csJ0cqLaX1+pz6EI/XpxOCWSnHT1gh89fCEBE8iL9
	7iK8nc/mgIHFyjTjuGkfrGpXPAePHQbL8FnLEZYeAM1XHOaXk20jNj9o3xoKP/bV1dRS
	/FacWeszZxqC0DrKrxYO4GxHwTSyhBTlduEItCC2W4DbgWO/wjmC5lfOnwAq4qdBRqOr
	TXUreRSmH22vXAPEE+tR8+Ec09FuOnWoqhCS+CWADiNyFt4+LCFbais6H2C3xlH/EhWW
	ah5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=z05OfBrbkww4+AEfQP2Qw3uYWKks/JaUZEswro8UqMU=;
	b=QCAOIO66gv0ExhSRkwGuFxKXmD8jTwuUDndJIxPKZjKiVzVLufbmVPx1FuGe/zz2Z5
	TOM+uzEQQqMPJi+qkVNXlHnazrBmrdIez4h8OTU35uqXgAQVwG/hirgOvrsU3Yev5rnM
	vu7oaB08e++S82qBO0JYBY8JBPfdnMdyWUE3xhj8V7f2TuuhXUG2N3Z5jMs/e6NER1lg
	Emq0/CFIPTaTZdwRastnB82Vh/cjENtg9DVKIX9xADIja52r6g9wQzAs/D7dXQyh6umw
	pWJxELFi6PSZIiQsHMOMmxiWiiXO6zGK8GCmvsoDM0Xk82OjF0G/cfWgWiSoZ5zMZwrP
	N+YA==
X-Gm-Message-State: APjAAAW7YZ2nTotH7nYUSg8FA/qxwCcjYrbvxg0Jv4nr3AGIuBQk7tJ+
	4XR5dB5ybd8xcNqxtBeqsKt4NdLkcD0=
X-Google-Smtp-Source: APXvYqwxv178zQx0D8sJK635KkDK9lU62T07QVXtPjHFMzilccHSY+7VhSE3IYM7I6MXMRbfH5KTKg==
X-Received: by 2002:a1c:7ecf:: with SMTP id z198mr154850wmc.175.1568049532977; 
	Mon, 09 Sep 2019 10:18:52 -0700 (PDT)
Received: from [192.168.0.13] ([45.222.11.82])
	by smtp.gmail.com with ESMTPSA id z21sm127275wmf.30.2019.09.09.10.18.51
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 09 Sep 2019 10:18:52 -0700 (PDT)
To: Blinux-list@redhat.com
Subject: Comunicating from your Linux machine?
Message-ID: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
Date: Mon, 9 Sep 2019 19:18:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.44]);
	Mon, 09 Sep 2019 17:18:55 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]);
	Mon, 09 Sep 2019 17:18:55 +0000 (UTC) for IP:'209.85.128.45'
	DOMAIN:'mail-wm1-f45.google.com' HELO:'mail-wm1-f45.google.com'
	FROM:'brandt.steenkamp@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.125  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.128.45 mail-wm1-f45.google.com 209.85.128.45
	mail-wm1-f45.google.com <brandt.steenkamp@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.44
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 09 Sep 2019 17:19:15 +0000 (UTC)

SGkgZXZlcnlvbmUsCgpTZWVpbmcgdGhhdCBTa3lwZSwgYXQgdGhpcyB0aW1lIGlzIHByZXR0eSBt
dWNoIHVudXNhYmxlLCBhbmQgR29vZ2xlIGhhbmdvdXRzIGFuZCBEdW8gY2FuIG9ubHksIGFzIGZh
ciBhcyBJIGtub3cgYmUgYWNjZXNzZWQgdGhyZXcgd2ViIGludGVyZmFjZXMsIHdoYXQgd291bGQg
eW91IHJlY29tbWVuZCBJIHVzZSBpbiBzdGVhZD8KClRoYW5rcyBzbyBsb25nIGZvciB5b3VyIGhl
bHAuCgogwqBXYXJtIHJlZ2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IGZyb20gVGh1bmRl
cmJpcmQgdXNpbmcgQXJjaCBMaW51eAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
