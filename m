Return-Path: <blinux-list+bncBCV3N6GOXMCRB3M7S66AMGQESKDN7DQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED09A0FEE9
	for <lists+blinux-list@lfdr.de>; Tue, 14 Jan 2025 03:46:08 +0100 (CET)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6e9fb0436sf1427929985a.0
        for <lists+blinux-list@lfdr.de>; Mon, 13 Jan 2025 18:46:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736822767; cv=pass;
        d=google.com; s=arc-20240605;
        b=EycQP3URSQTE+Svnu6MWEvEYQSXp+V4MrC7BK8prynh2FAeqkP1Sa9iLzRY8RsKb6e
         f4HIt1KVBCrYfhNiP8L7TSGv9rLp5RhMUDJsVNm6lvz3GO2dJC4g0RFFFOoXkXaFLbdo
         XpNHOUYcL6MunkaPclgcqxeiXLhUD+7CqPXfVDfGU1SfLMIBOOkoZgFBQhN8msRpYTvp
         mqo2tCx7e88IIkbIRemxFPuo/WIiR/RMK+JA+czSBNLaQ7XO1+qS9AyDzw/zkzeMNwci
         Ch/kJAqa4g53TEiEJTNaF+wVy1JhjqNIWixiK/jRWTDLBSVy6u6IlRoMMtGUtx1oON42
         pLEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Ew8e20K/B5ulCv+5dUpPcMTYmUJrTT9ynq2SuffjZFM=;
        fh=GPb3txm9DKjqWzonkkfye+cEgB6zsGgNizJ5a24uQDE=;
        b=heJQCkIdPbnCo4pJhu9VTggOumHbmzAohq/g3qQcbxa8gCnEBn6RC/LsoVyjbGw2bS
         z6m8CqZGuJiGJCNl9qBmMSiOaFcWlqYS989YH5XUVGHArfNou0VzmC2lqBbbH8BWn+J6
         A1/smhMR6p7gID1gnw0dWrdhUf0a5QSahmtwVKTiH1U+lM2aRuBC/jfl59eacSH5qdbk
         Uzlh5oB2LzT9hWYYIJLTurrvAUGnVI34PY9C7NQHSj8pdKWT8288DnhEQudnDn4kA8XM
         R5c2Ri1pC0zFsUYQpTpLLgtXXdYfwi7JR6ambEz4mQJoaGNZu3Nf6Clndaf4d+jCgBGo
         hvhw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736822767; x=1737427567;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ew8e20K/B5ulCv+5dUpPcMTYmUJrTT9ynq2SuffjZFM=;
        b=Xsdp5wRUAFZqv26goUl7Wspo5JWCM6zb+H1zVd+RlVmbidKxqANFYYAs5GX0hT8NXW
         n2SkcAbFFIRq3VvRyd4myEUjLuqAsOUCf/nE0KY4T3CRWOuZUzhiZIE+HCIWQTc1FICP
         VU7J3kElDjcBskyxcPjz9h0ymu5+j/o+AmQh+2MDzdQ6x7wnnBbgjrCOYDybNfpL+me0
         loXZ46xGaJsbOwppoZ2QQn/4GqJuMcUnSVuuwOGToKGtr3dBjApP3Xu5JDTwjDqrysgh
         5KFzkZNCSmUAerJzvGYLcQtk/xijKHZixPRkXYjaV+VUtA9BQ+H61yodyJfgNfmfnYiq
         OZKw==
X-Forwarded-Encrypted: i=2; AJvYcCUwwlHkTPrbYsdyfvBUqAH3EyeOQzNmOmn9Mj22YGndYEGve9iVJrwW8Xspz1X22d5dIyqxPg==@lfdr.de
X-Gm-Message-State: AOJu0YzCfzhVIVQi0TA0DRmv7jFBB+g6ziMqUGRmEc7ZtBrd/RWB7GKA
	X8jDk58cPgPNPdzbQGOzJsa+IFxwjT7oYtLWPhIofcFjgP+/6ld52OoZ1FLUhWI=
X-Google-Smtp-Source: AGHT+IGfkuScUhbPZXUeXAgWCX6DkqTSK4JFdVb10Ejn+sN2cvbkzdYgOVOMXatiG55MjqTAipWOiQ==
X-Received: by 2002:a05:620a:3914:b0:7b7:142d:53c9 with SMTP id af79cd13be357-7bcd97d1f1fmr4342221385a.53.1736822766770;
        Mon, 13 Jan 2025 18:46:06 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4ee1:0:b0:6d8:feae:7de9 with SMTP id 6a1803df08f44-6dfa37a71d5ls50465146d6.1.-pod-prod-04-us;
 Mon, 13 Jan 2025 18:46:04 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU8H9FMlCV+sNXBofdmnhkLM5ubw3V7InHww5zcfs1vkrWL5Tr2aedd++twJe19UCROrdeagzcT8Ch7vQ==@gapps.redhat.com
X-Received: by 2002:a05:6214:2266:b0:6d8:a856:133 with SMTP id 6a1803df08f44-6df9b1ea668mr304038396d6.12.1736822764695;
        Mon, 13 Jan 2025 18:46:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736822764; cv=none;
        d=google.com; s=arc-20240605;
        b=em5Qh3Ko7Mfn9mXzAy/Rd1sVJ9DGi/z3CEvcK6dHjv5LrUDlveobsjN1sc0W2ck3xS
         shwQEIbv2DRBWGJjbFhx9WIrruHL35irctT26xhdE5vObZPeeKHR7JChgjBPUPlIUPo7
         dwdVEV4E5gEt8N6BrHzxlcDbosYlwimMkP3n1NC1nL2Tt2EPLtupqcYDvnacp+A24llh
         HbuUTS2dz3GHTj64/3NLiAlEXfN6Gw4zc/B0/miY/ILhuiNmek1RyUmvCEk6HrkrufwK
         cLTHLZd+tY0q6xuB/RD1jMgUjXWY59a5SuPPGWhZ+CRysbTW5n9kQdIqrOmvNDFDPaJi
         LBHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Cyx46o5bHiEFSZDM3gPb/L4VGd2vSZe0DNkQsUpsz2Q=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=kfXEOM84cSL7v9ghCDeSrVKXYSrxGGUsbzb6DiPrESeAMcyNv43t7uNaRKHuMiF0bL
         uduoFUZ84PKdP2EiincFnnMhdZyVhPBaDkSANyCAtc3QuPJZouvFgkm2ompESGHDHbvh
         YbfasirqQ3BKRSBg8QOuZrv71X3QNQSmS0wQtssc62nhrIPvOQ/EfjxuWgZxHKIQISC0
         jj6Dqxs6MI0IsO3myOOOCTyrhADZRUzU+xBsF4jSS2qzVySe5oQNprrO+0YFb4L38BF6
         67wnmWrnHIQVfVMNcRGgb/43V45ma2yeEay0WX8PlGdfOyudScDBoeiur3dR+VI2radp
         yiOg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dfae00d309si110741496d6.439.2025.01.13.18.46.04
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 18:46:04 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-591-UBJR4NlwNPmj9HMfVrChHQ-1; Mon,
 13 Jan 2025 21:46:03 -0500
X-MC-Unique: UBJR4NlwNPmj9HMfVrChHQ-1
X-Mimecast-MFC-AGG-ID: UBJR4NlwNPmj9HMfVrChHQ
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6ACC5195605B
	for <blinux-list@gapps.redhat.com>; Tue, 14 Jan 2025 02:46:02 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 640B51956095; Tue, 14 Jan 2025 02:46:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 617F5195608A
	for <blinux-list@redhat.com>; Tue, 14 Jan 2025 02:46:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F03B9195608B
	for <blinux-list@redhat.com>; Tue, 14 Jan 2025 02:46:01 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-365-fcDRz6NGPK6VoUGQkoC5hg-1; Mon,
 13 Jan 2025 21:45:59 -0500
X-MC-Unique: fcDRz6NGPK6VoUGQkoC5hg-1
X-Mimecast-MFC-AGG-ID: fcDRz6NGPK6VoUGQkoC5hg
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.47.142.229]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1M4JmN-1tXFsU2nQ1-00EAi8 for
 <blinux-list@redhat.com>; Tue, 14 Jan 2025 03:40:55 +0100
Message-ID: <45995941-6847-4694-b01e-d67ee7418667@gmx.it>
Date: Mon, 13 Jan 2025 21:40:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: speech-dispatcher Before I Do Something Stupid
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E1tXPM7-000KS7-0c@wb5agz>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <E1tXPM7-000KS7-0c@wb5agz>
X-Provags-ID: V03:K1:TUwRxad3j9jIiKID/j7oGR9RNHch/mU5qIhiY0ULsTcjcOTqHlI
 HcmrtEM7p0NVcelvyn2J9LiL2W7+oXxUppah+aNByNCtHnpNfIdRg3Ey5S9dw8AGJLx/RuA
 2jthqphsxb9fMjUazE4/n2GNYDCAvEoaVKzAjCNnToQn8dOvuqaBBuA3R//I6huMLvbo59j
 Ra5/p3BJv8NdrvKgBxxag==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:djvIm9wizV4=;RTmKzafTeAsRNEbunYEqkvz1Tjb
 Abg5mkk1UxiD9CjQEzlmTPTnfbD/0k8Xru3kyw5s08IcV99VXjQyXSScFihOtpX4FYAd+6MJ5
 IyiBCrrLqPmQtynvjk497cZIKr0ke+iRevcTU+XeKVJQA8ZLkRZIQ6RJeWPX+zs3UQan7MlDD
 7pTRymfQFqUGammYX8D/HJbyUkqvUSJtmZl/wLCNsNzN4dTscOoCneQAH8RqDp/5QBhdK3Jqk
 lS6a4rnL869OUK+4jXSb83NE4CWtYBs3sILQepbR0/ZtPvu2xGB4bIDjMcz8LHm/1tdocg+DF
 SvK9kr0nzv85IAv9L4ZhFgL5vuWDK3fKgrBLWXRWe6wIDSZNMlwbwm7bHHqXKomM/5QNRsHdz
 HALVrbJepQDiFZMxc7tHOeZjtepiY3H+cZT7X7AYedqGVLESAj7iIdvKrM5/yPs8ktXbu6J+L
 bjd3rkKfciacXS7FZCCzcpwxjq4nagN3SQAv7hc/6YhnTKjUxQ5IHQJ5M3vGxetHlkV/QrtU0
 kVVRYMUu8oCGxKQpcLuPPqZimKgfVzs+swTOpPMUd33qyJUzVNHZVsLQ5wygf70uvp3qx/Yp5
 xNde/2P+wJKbDbVGxZnq1DI7LD5fU73iq5HMyLgUKZGWG6hPNn6fk2uTLH3mkEO3zr8BLvzwc
 AwBHO+0q6cSJ6TDkp2r/9rkXLLVUFj+tCQJIm5kQ/PAgHZ8zTbnwUUoK7mvGUuLH9FF4akSiG
 81d8LZkD3CmV/4a0b/DvjRpmxSibbwEJkQ/sVLc1/YcKp+7LIVfhHgCiTW3JOk3ZBcfVhwND3
 BkX3qw38JCRqRqGnQVBAWlehoUSa6Xckh8qMzc2GtUVeVgpEN94lVKH04KqtqIB5TZ/ZQKa7C
 6CiKQbhLqi6lImcnBkvyL8xnhCBdChlqckbukj1xY2de93ElBDBLXnXt4OzV6LBUP3SfBQ5K/
 iMdJa9SQo4UxKIp1e9xNIx6c2zj+ANuivDOF69bLUBeKnYPJ/GQbA3jPG4PBv2jKXhqYmv1qW
 J1bwTkqBw5NcN/p1GUBoG6D7vk21aJwyb/N5/EY3mb2jp/ttJnaX+P15e4DgCT3uLnlLEOHPq
 mZaeqeBa/6QzX9YaIHSGkIlYavsfmn
X-Mimecast-MFC-PROC-ID: hCVAhkqr4Xjmy_IxLjst5u2Qd-9fZjDKKmisj3zalv0_1736822758
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: SEJWoG8BNeKDYWcZpIHvEuZ5QLguTRT5Rg8Z_iVHzZE_1736822762
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

I'm not sure about Ubuntu, but anything using speech-dispatcher should
work fine no matter the terminal, or at least that is what happens here
using fedora-MATE-Compiz. That said, I rarely use any full text-only
console not running a graphical desktop, preferring instead to run my
terminal screen reader in a silent graphical terminal. Both Fenrir and
TDSR are capable of running in such an environment, so it isn't even
necessary to stop Orca's speech in order to have a full text-mode screen
reader running inside of xterm or similar. Your mileage of course may
vary, but this works for me.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

