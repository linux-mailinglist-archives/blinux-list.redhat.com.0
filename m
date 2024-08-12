Return-Path: <blinux-list+bncBCFIHJ744YGRBS6P5G2QMGQE4LQKJ5A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEEC94F7B6
	for <lists+blinux-list@lfdr.de>; Mon, 12 Aug 2024 21:51:41 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7a1d108d705sf494499785a.0
        for <lists+blinux-list@lfdr.de>; Mon, 12 Aug 2024 12:51:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723492300; cv=pass;
        d=google.com; s=arc-20160816;
        b=aJtJED9fSDJ3GW4udCJaW7VQE3IEIRvQkdHLTFfyhK8gDzu/O/5UvMYzR7dObXizA3
         WTReie6uRD7DsIUdl6tgzHKWJZ8eJldf08tojP076NhMQJeJTtp30IRnrt70W/wfHrV5
         agolGJFwncQ2GcG8ptb3Gt3V8obROhaIviIv8Wg6sIforLoBSIYpG1BPYAqkRQFa/z+E
         mCOki+Fr3PpwU7iBd8h2VjMimgl7HZLVWPUS5WVTqgwexj0JtmOsOtBbmKCA3tI9TOzE
         hnLGUd8wi/8VMW+NM5EO09a0Rzv6FonCb7nHDRqi5Gz2BzH7mP11H3Hqg1aWRHDm3XPR
         8pPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:delivered-to;
        bh=QiORGmYl3qrxcgtLE+430zPznkHqVB2vFlmkmAASLNE=;
        fh=qCUGWUTM8TJDAhwCgbEx9v3nAzvxBH3oXbdKDK7DChM=;
        b=gAkhG+F2HhYrVZfXCkegwU+Zc+++6qXbNUpUVuB3dIpDMxDPzL7c56Q+vp4tgI2Nbk
         b90Hn3UwpoAVjkwlyZ5R7EBeXuqnnjDmpirFrtw+VHbNqjxfHh7D6y6uiE519YAykoUi
         crK1xgXjSwGGrgVH/QvjFP6TePCkVOxKYPWUpLeuh6JMZBPjd8G/0gXtS9N4Bbzo4gak
         cgNAKEV9HpB7OBkhyG0dZ/t5VzgAYDjmjXI/0r25wzCTLK2QVAhWeUjsGMhk5qA2V2ty
         6CnXCDtRX0/s80ws2aUNKMbVmm5ThOzHk+jY1JaYA0p2ks6QpDEnXx1cJHZENLnVeSm6
         UEFw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723492300; x=1724097100;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QiORGmYl3qrxcgtLE+430zPznkHqVB2vFlmkmAASLNE=;
        b=KPl3qZJTRehmf4xIcmXBeM/kX+XFMKMYWU6iwNrnXKQvIXGTRd3PA/TnSElPkHSnP9
         qyAFH0e/JdMd9wsdLQtyW4K9XM/M16lcpjoPT0oZjH2yXzgZ/FT0n8unvvxKc7kxRKv8
         rgblnDgqdCix8uOCTyyz7RK0u7HpI7ABCvIo3oVB1ncinjE9ogGxrvVI37oUphWF90tF
         vQMgHub7X3yyKB7I0Rw9sTWPkwzG7iPmec8r+hE+F9IFVF6fb+mLnVQGjUXgBMMBbJum
         t4lbBDsPOT4AGh2JYtwOX8vCNGaAuyKQtfbGT7vPJPRLhh2L2kixVYPwXZRMgl3Ut59c
         i6ZA==
X-Forwarded-Encrypted: i=2; AJvYcCVNj1DM1rYL0/UAC1JsWVg5sgDKLXJsTerI7AKx/EdlovRwBhv/E7jzXBou6qv+yfV8MY7qeZzHBSptfXSWArxcw9hfegO9oBaM
X-Gm-Message-State: AOJu0YzLcDSA1UU8Q+cB6N5IYgCEi2HMLtIQ1QLaIs8BiZAn4Lb/Izyx
	h9l47UF1p7Nfh7dUFpG3AlXJ4qBCFuueLo02BjqiO9J7ZC7QZuDQmQgCc7/8vR0=
X-Google-Smtp-Source: AGHT+IFhWyGX4RBUJfdGF1qFb2PZZBjMp0RJaLQ2l/Q0/dy6q8wcGwvtx8gxNgN6WPK50uytfG/EUQ==
X-Received: by 2002:a05:620a:2907:b0:7a3:5004:440c with SMTP id af79cd13be357-7a4e1500df8mr161218785a.8.1723492299954;
        Mon, 12 Aug 2024 12:51:39 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:486:b0:44c:9bbc:abf8 with SMTP id
 d75a77b69052e-451d10e7feels73880711cf.0.-pod-prod-02-us; Mon, 12 Aug 2024
 12:51:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVwXOAzs39/EL+T6dvXvYSh8JVmjQJnAwhas9CvZ8Q0HVrt9iaPcYHk0yPeXKoRAUov8/WQfL3MQWHh9vg3D8LK/L774k1SLG0LIEQi
X-Received: by 2002:a05:620a:471f:b0:79f:87c:a540 with SMTP id af79cd13be357-7a4e15e4602mr140338085a.58.1723492298874;
        Mon, 12 Aug 2024 12:51:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723492298; cv=none;
        d=google.com; s=arc-20160816;
        b=ZoWgnFTzIDHg9kymFqFcpQWIpn9fdCDlMP7QEmj8lit+TE1dYeHTvDxY2nbWr2OXhn
         DvJPfqpS6ELZoxvmQ7ble0fsueEZoB/DpXdBztOapMic9x1rLgzqaKlp2qMKsUCnCleu
         w2ALF7QmZhFBAOE4BzRVCJAREEEmjG/BdaqHytHH6SoClBurniYtdPOEQcgHFhNUMotJ
         nZ4EexuWybiy6D5DyEsc2rvwGwpa4W5RQBAmYyl7PssO+6a0yRpSMBcVnoqWrDHF6wH1
         hon9uyhU96ZNz8w8xcabrCFCLDPZ7TvBdWKLKY47Ns/QpsfROmgmlhFV5YpBE3O5D/yH
         qMUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to;
        bh=BMWNn1blLhwbERU3e2GNJ0/cw7oSeB2JUW/pwRedJJ4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=rKYQEOQ3EdIxbO3XxdLet0gfIWzJVJKT+qB9ISZGer3cSv9yhXs8v0TigGsIQ/bsbQ
         tQ+MatYvHSIZz+lTxj61iqs2CBr0QsnwIW1OARJf3Ca6MoKoKyhPLMAa5tAYSbL6Ymqz
         I3kh8hPbfLRptErsULiUk3LI4tQegOwXt5InhB0B5hVMaBSpJ6TdU7MdNgDF6HiBtqiE
         DFJQs0byOGWLcfRMdsexxSHallvuRQ7ij/JY5xK387mQLON52ImYXUdlYYcSPT5u4HuO
         dFLh8E5A67GaJa2QZWLMqCIvK0m2RtlAKQ1QmtSf3kV+XyWe4eQeWn05zw7cfguSUyk+
         efqg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a4c7dfacf7si709926485a.311.2024.08.12.12.51.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Aug 2024 12:51:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-9-jRIxjzjyNXennv9P5V8rWg-1; Mon,
 12 Aug 2024 15:51:37 -0400
X-MC-Unique: jRIxjzjyNXennv9P5V8rWg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5B6901954206
	for <blinux-list@gapps.redhat.com>; Mon, 12 Aug 2024 19:51:36 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 54A0F3001FC3; Mon, 12 Aug 2024 19:51:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5247630001A1
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 19:51:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E296418EB224
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 19:51:35 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-673-Rq-W0IFPNAKwdTVxwVUkDg-1; Mon,
 12 Aug 2024 15:51:33 -0400
X-MC-Unique: Rq-W0IFPNAKwdTVxwVUkDg-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id b0e6eb52
	for <blinux-list@redhat.com>;
	Mon, 12 Aug 2024 19:51:32 +0000 (UTC)
Date: Mon, 12 Aug 2024 14:51:32 -0500
From: Tim Chase <blinux.list@thechases.com>
To: blinux-list@redhat.com
Subject: Re: taking a screenshot using either Links or e-links?
Message-ID: <ZrpnxHg6pp4_xhuX@thechases.com>
Mail-Followup-To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
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

On 2024-08-09 14:08, Karen Lewellen wrote:
> I recall, that links the chain has such a method.  If I am right can someone
> outline the steps again?
> or, can one create a screenshot file in elinks?

I don't know if you use tmux, but if you wrap your links-the-chain
(or lynx-the-cat or whatever) in a tmux-session, you can use
prefix-colon and type

  capture-pane

to capture the pane's contents (your lynx/links session), and then
use prefix-colon and type

  save-buffer karen_screen_capture.txt

to save the snapshot to "karen_screen_capture.txt".

If you don't use tmux, it's an incredible tool and I strongly
recommend it, but I wouldn't want to encourage it while you're under
duress of trying to get work (like screenshotting) done.

-tim





To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

