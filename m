Return-Path: <blinux-list+bncBCM2V5WE3MDBBU6YTC2QMGQEKJTXEEA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 2205D93E4C3
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 13:32:37 +0200 (CEST)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-70446b3d142sf3176507a34.2
        for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 04:32:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722166356; cv=pass;
        d=google.com; s=arc-20160816;
        b=hf0aZtdepIkeUun0FohjwNS5TAyd8yomq7x7/grNVVtwFK5vtOAgi9SMXlTZP57Bno
         q5eUpHNc3P+u4h6s0uMd0ELEp5OmLjWvsGQucrPFYkzuZDony1ikR7STFq44jOrPMCi5
         CI7V83DPNQuF2RFzlW5BRZKdsg6gohhfIK+5zu88Lp8iBqi8O6R13TXb7XEn5/57gIhx
         bDQzSRZ4O4YSjWc+nsEgNBhcyHrgQoH64pcGgxbcqSjw43x+A45wTEydVlfGaZZ8t3xq
         VOzTSswzuEQenJcbAvCqpflAtGlabrMJ0msie5TikMK+PDHXqhUKApdGPN68EHsNnNaj
         m8hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=TfLTa6OeL4/BoLgdpXkx/VL+QJSh2uayIUMVELaIcdI=;
        fh=5in265wBgB8VbCBgXkd3W8DKkwRN3Lb/5deEPCuTwXI=;
        b=l0CakeEzjGbufIqdHXSSo7kd888ouMlNwiBdpo2mcXFaqZo0bL3FJ9Mp4v054ODyUk
         c7fppLEiE42XlOH5VmSBvJAyFgmer9KCwFmiaq+ZrR6itm42SfSbCRlgqz0Tifu6fQ+C
         l+ImcONHGkP8AxoaJ1R009x52YPwC3fl8TJcPuMNGs018xre2u66KnPALWPKe7VUcDbT
         sFO3kho7Q5tDBw9AINscsJf1GY6S2gZfsJAlB9CxihZJ/ROYpX1Te0UTcvb0qTnK2nbT
         y3NKPLhToX/JVUgceMrDo1KlBX9Y77ilwtodC+6mH0h17e1j9DPHNOYEO5DC7anF5IxK
         ShQQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722166356; x=1722771156;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TfLTa6OeL4/BoLgdpXkx/VL+QJSh2uayIUMVELaIcdI=;
        b=eyIf6tS6xd8m359+tN8mF2t1eKCtzcATAwIFVdHSUWf+Yhal4RYqZEGQk1OBay2lKd
         ZOJ3ITOU1neVGI3wpupZv9Fh7U3BVmY1JKJuPd4OHv0PZKTYBV2VxeRCIjAYZnoEXQBe
         b1tRKothBPU3gLTYXhp8TWzclfxJy6X5lOMefZ/qlGhaCsCWYZJFSQWsrmc/ep9eg/K5
         Oexvy6RP9GC8EMLM9D72TT3+rxdkTs2V9/EkdCww59PkJM5Zyb22fiIQHHn5WwhiqQty
         Uihn1Kg+Y126l3RrNRA55R3DKoRFJoFiIKpwKHWv6pi/BPYVbJkqdz7PgFOauhDjGFhT
         Fb4g==
X-Forwarded-Encrypted: i=2; AJvYcCUyfLHUvctRVeE+zlnuM1eK+P/NozY/+mVksdxOiCZtME2EEbBhi1bCmRs4z4G/Kw5Z1H9AFWNAisfxELUKpcGtdQTTLCS5wxzX
X-Gm-Message-State: AOJu0YyO5vvSYTHREfXNnmhCFTAUAku+RheWCIZdHL2WyBo+T1G+X0XQ
	9kezXHsv+1L6jmSvsb/wgfPV3mwy6lKYe8PBYH8ey5jqyxkO3LVLyjmOMRVQ9hs=
X-Google-Smtp-Source: AGHT+IEx5oxsb0tHuDHRH7nKieV9s18MmWj4a7wd2LfIYWbmzmlnIT4yWrG/99lGPY5XnxhArO22sw==
X-Received: by 2002:a05:6830:6e13:b0:703:7978:3cac with SMTP id 46e09a7af769-70940c03ffamr7705197a34.3.1722166355554;
        Sun, 28 Jul 2024 04:32:35 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5982:0:b0:447:f1f3:5341 with SMTP id d75a77b69052e-44fe31c26d4ls73534701cf.1.-pod-prod-03-us;
 Sun, 28 Jul 2024 04:32:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVjmMLmNvJ0VYoPbjCVKhe3K6acAUKZdeBwqm8+NHthoHhxbkYeD1weRQPjwT+P11E4VNytB5lCkIhCRt75O2zS3Te9XL+G/5GeU/KD
X-Received: by 2002:a05:622a:1a92:b0:44f:f287:c9b4 with SMTP id d75a77b69052e-45004f2e17dmr60300731cf.44.1722166354844;
        Sun, 28 Jul 2024 04:32:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722166354; cv=none;
        d=google.com; s=arc-20160816;
        b=wINGoHqcz3b4v0gzfzFh626Zd1dV9VwW1XmCnIIMD6upwmqYy6e/mH7HJ+6yZcv7Vq
         dBzo5HjAScBXBy9RRSYY1XQXsZdqpas/kojA3Wck7HZOxAb9kyIxM7IiWyI3dlqNNPII
         S3zErGU+6f/QReNXvkLamK5ONUskkbb9pVn/2iMo9/cFL7Ihl1uuh/2CX0ueYQk2zwU/
         f0Tw5rIsNebRWz4R72BDkr0U1ma3PGDUaDabq4s6rwQswsiEVBi2hzNE/ms/gfm8eAZ4
         1S5WfT/IbjSVFzrNN99RcwZYL+a19FIvxl20d3JUEehgSkyfqi6MMJvtBkkUYvLpRMSL
         131Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=7/l9qCmVqYJbVOKKKngWS/mht/870f9PzYue1p6fIxQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=oN+O9DrL1dc0LZ/Dsals/eD5rRJUOhQHxWOIXbzQpKPa/zDtedsdyLFI9LzJMD+jUo
         xq6gnoZPHN8IcIYwYZhGkDMCSj9A7uSKUGQzC8pf8BUEfOxI6bUVDvblLCEfd/YF6CVb
         eXHKzC84/GRXDPLvDDGXH7w46lIaQ9D1vhy1P3v+sBZF6YlN2A8CQwtMVJX0Z0vtCKnV
         RzcH6BzqzRl2vqUoZ54EP6kGeZPjQkXkyhMmUdmPcBiK3c06lr55GM4RdylakmQ6kDY2
         2pz1+Ew2Rr+u0GObcAJbV3+O79sqoVZNhEWV9nSBgJOlQTy4lPP+A032SxsJ46dTsQIf
         8jPA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-44fe81fbdbbsi79727791cf.389.2024.07.28.04.32.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 04:32:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) client-ip=185.70.41.103;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-265-9HFvzTWDNlmeT2X_QSH9VA-1; Sun,
 28 Jul 2024 07:32:33 -0400
X-MC-Unique: 9HFvzTWDNlmeT2X_QSH9VA-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ADB0719560A2
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 11:32:32 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9CBB81955E89; Sun, 28 Jul 2024 11:32:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9A7331955F3B
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 11:32:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1B1AC19560B0
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 11:32:32 +0000 (UTC)
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-41-Fh3c7FG_OvCCiBSMAjvwvQ-1; Sun, 28 Jul 2024 07:32:29 -0400
X-MC-Unique: Fh3c7FG_OvCCiBSMAjvwvQ-1
Date: Sun, 28 Jul 2024 11:32:17 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: scan and read under Linux
Message-ID: <80a16324-ae3a-4357-9ace-c96e750797ee@protonmail.com>
In-Reply-To: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
References: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: 7497a100118b364920139b640c33937a606f17ff
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

Hello,
Linux Intelligent OCR solution - LIOS is the Linux equivalent of=20
Finereader on Windows. You can use it to scan say a book with a scanner=20
and have it recognized, I believe using an already existing PDF is also=20
possible. It supports multiple OCr engines as backend, Tesseract is the=20
default-one I believe.

Best regards

Rastislav

D=C5=88a 28. 7. 2024 o 5:20 Ryan Mann nap=C3=ADsal(a):
> Hello.=C2=A0 I have the Fedora Mate spin installed on a computer. I have =
a
> USB Cannon scanner connected to the computer and I was able to scan a
> document using Document Scanner.=C2=A0 I was able to save the document as=
 a
> PDF file.=C2=A0 How can somebody who is blind read a PDF using Orca? When=
 I
> enter on the document, it opens up in Document Viewer, but I can't read
> the document using Orca.
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

