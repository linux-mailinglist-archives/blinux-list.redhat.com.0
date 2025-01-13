Return-Path: <blinux-list+bncBDP7P6HU4IERBE54SW6AMGQEAFLUWIA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 926F5A0C02B
	for <lists+blinux-list@lfdr.de>; Mon, 13 Jan 2025 19:40:21 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467a0a6c846sf93542021cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 13 Jan 2025 10:40:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736793620; cv=pass;
        d=google.com; s=arc-20240605;
        b=NQ+kjA3uq/UxVBYycXFtjt+Dv/QAjnwBDLoIQBGYo96axN06iijWPpnJXIDrPQa0pq
         OXFzA1pDJQjd4jlKcSQ6/oX5hNvm0EXRY7qLv/HTpSWCPrC2L3V54RFLQY2EE8ifIBGA
         hiWrxMx3+McRJKckmLngPqrViJ95YarRt/OMB4AUWF7kZpUjnoFHck4dxuF5RYpPn4yF
         j3I0A4ybXLfWJfUwLTVUAATS2x6TH2+ceBBjICzX68gUcIlGA4UBifLwBX4aWrBKC/RJ
         gc+piPMg4WtfDAlRkGIs3dB2E4XJvyvmg9AUpaJBnkbxae+Oo2YyO3cIxtPrgsuUbiBG
         fCTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :subject:to:from:delivered-to;
        bh=rsemQodw3mJesWqwzxpcaPxLa8R72DlLhs3n+EF9fYQ=;
        fh=E2NPOdF5VGmaS/zxndmGXLN4wNumsguR+DiqOeA+gHk=;
        b=J6XWaRJwuZTPhYqetC31ShemPXRRKwyOYBUo4GWT1TFlOq5o5x8VPuVU3r+dxLlNMc
         q1+fVsvgOxTdubF/zZKA4T/uMqXDB5x3bUoKu3+I7JKFY3dAa0OxBLGwfUCOjxTNu25N
         y83u4eXZSMHW9QMpNdeX1kcr70I8X7/WK98po8yA3G/GR4+ovs63X/h/jzlW5gKN1vST
         jM6GVv2Er9wVl+E9Ta9HGmS1NUPXG4Xp6UM9X4QTudM0v6XHkUgi3TPd0BC4Pc3JJf3p
         kc7GXz9C2yhAG3rEPITKblBD7PNx8nJTud1NRadXuvVSP+POsj+mW2aq1Du2qQ1DFUgs
         D5eg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.176 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736793620; x=1737398420;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:subject:to:from:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rsemQodw3mJesWqwzxpcaPxLa8R72DlLhs3n+EF9fYQ=;
        b=TkNlTtBiEtzBzTxgvkum9qTaFYJz6PweSoZRViltaJhQiUW5RuTQQ4SFhduuIr6XFI
         IaCNJPL5jIPuUWp0GtaHlQrdfX4F1pvKIy88KljmsVUSXZJ2fOwCbcaeeaV1IHzMHrWX
         sUwwUWRpIxJbrdtxLi3qlnyMAQl8CcRVo4pqdCE7yLoHoRJDDPh9CgYHIPuBlJk5/3DP
         TVqtv2UCIfvHhh9dA4l24Y3LA0/8VpABoEBEokAq80B2DMosPvPALt+9abTKXDYTJ/PU
         U4EL1Uyp3FWhRKWepcPZhumGkZhnhnyzJILe2Is5dua9i278szx/Z3+xWHAHk9s7+wug
         q7Mw==
X-Forwarded-Encrypted: i=2; AJvYcCVO2EZqbayPXp2+ccyVJBBmqCsCcDEykUxGrDkQYDlgp8s1pOugFxaXvLtYxaFcjyiF/3vakw==@lfdr.de
X-Gm-Message-State: AOJu0YxJ1LiHBVn5vrKdvuHOyNkLEvUAhBKyboAEHU5QoXrmJBhTIROw
	tepLkabwq/IYz9Gp9ei+Rvc9CzYXIolQqNF/AowBziqFyB6hlXiMnx3sKo6FzMQ=
X-Google-Smtp-Source: AGHT+IEgsb2C2wHUTDazBCpTHSNHP0d1eVZtDQYolOBSwp8CWC5Z14i/gT9Iuczhe8Uz/73vUGss8w==
X-Received: by 2002:a05:622a:250a:b0:46c:7276:7997 with SMTP id d75a77b69052e-46c72767a71mr422141251cf.13.1736793620140;
        Mon, 13 Jan 2025 10:40:20 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:9e91:0:b0:6cb:d4f7:64e0 with SMTP id 6a1803df08f44-6dfa37d106fls10684956d6.2.-pod-prod-09-us;
 Mon, 13 Jan 2025 10:40:19 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUcUiezyDKIpcXxsYPgkOquDR5Ke7xePg1j96l1Z1XBiuXBR1PHrJOOzLLT7R5AnPFds5Tyw+gGiPbqeQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:2985:b0:7b6:e20d:2b47 with SMTP id af79cd13be357-7bcd9759e74mr3704130985a.49.1736793619004;
        Mon, 13 Jan 2025 10:40:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736793618; cv=none;
        d=google.com; s=arc-20240605;
        b=fEG/UfTNNd0LNFvL0JWspbOv19bZ6UAu4fdSgWHfcroG/P7jxhSjvnqlOmm66Swc9I
         DRDZSOVNoVhyvvWqxOxvN7AdtJmJW0RqLVChoeyRCHIbvLAcU58h0LmBqgucO408imIQ
         y9yyMYlF4WxdOGHzHvC9cpvfteS7AqfxwKbwf/5xgUbFRuOmKfBxt1O2textXj26lcMa
         lmfZz7IL4hWQ5N28abhgLJoF4IMEtZB/8WogxGwsLuanYKzYex8I2SNcn75bn+peUFHD
         S4bXxHwfoZx0asgRZJZF6UMKVcQ6kWNUi8ds5ozdrKew6wKRrKrw40d2it8Y/HMAXm7f
         kpzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:subject:to:from
         :delivered-to;
        bh=cOakpjtf+O7HnSONlXZ1X9SBAqC4RBYqVsZ6CaZyZ5E=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=cJecGQKXUVgNcds1twa2tdU0OzCDQu67/ulg6HNhWgmoF3xXKOgjzbcNgdTCYzyq1r
         MDBWiA6hPG3ajfyazyHl9+K84+OekvTMDeQeHM3dl0lEPRX70zTTINOsgIjKdBuDu4pQ
         zDWlWfNnJqkQUET5Q4BBXoyDQ5l7/kHX0pe8rLwelq9CXIQigxoGrzUJcnMuOmUJzHBl
         5B/kkD31QZXvbjpnD/vY57JY7DdgKMfVvRZRC7twXe89nK+FUp12ODv7j9kBFTYX7ukA
         n9Vq9QNn7z5pOcZlSgUi4TRIlS6OmUtyAaVLJHZN0psVa2b2XNLqvMg1VhLOiSxGxahf
         ym7A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.176 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7bce34fcd0fsi1259072885a.446.2025.01.13.10.40.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 10:40:18 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.176 as permitted sender) client-ip=65.20.63.176;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-593-ZS0M7ad5OyaFr1vp7iBiDA-1; Mon,
 13 Jan 2025 13:40:17 -0500
X-MC-Unique: ZS0M7ad5OyaFr1vp7iBiDA-1
X-Mimecast-MFC-AGG-ID: ZS0M7ad5OyaFr1vp7iBiDA
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 05C9A1955BD4
	for <blinux-list@gapps.redhat.com>; Mon, 13 Jan 2025 18:40:16 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 011EC1956095; Mon, 13 Jan 2025 18:40:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F2C9C195608A
	for <blinux-list@redhat.com>; Mon, 13 Jan 2025 18:40:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7679C1955D84
	for <blinux-list@redhat.com>; Mon, 13 Jan 2025 18:40:15 +0000 (UTC)
Received: from altprdrgo03.altice.prod.cloud.openwave.ai
 (altprdrgo03.altice.prod.cloud.openwave.ai [65.20.63.176]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-54-GWVCnEKzPUaQR7eG6RVTWQ-1; Mon,
 13 Jan 2025 13:40:13 -0500
X-MC-Unique: GWVCnEKzPUaQR7eG6RVTWQ-1
X-Mimecast-MFC-AGG-ID: GWVCnEKzPUaQR7eG6RVTWQ
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 6767F7C6045A3EDD
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudehgedguddugecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffugggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhkedtkedtleejtdevhffgueelieevveffudeileeiffeujeetleeludekkefhueenucfkphepgeejrddvudejrddutdehrdekudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddthedrkedupdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdef
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo03.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 6767F7C6045A3EDD for blinux-list@redhat.com; Mon, 13 Jan 2025 13:40:13 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tXPM7-000KS7-0c
	for blinux-list@redhat.com;
	Mon, 13 Jan 2025 12:40:07 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: speech-dispatcher Before I Do Something Stupid
MIME-Version: 1.0
Date: Mon, 13 Jan 2025 12:40:07 -0600
Message-Id: <E1tXPM7-000KS7-0c@wb5agz>
X-Mimecast-MFC-PROC-ID: pjhrmoLdM3G2Faxl-maaLQMQiUHz8zIay1XbsSL-oAM_1736793613
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: LrQjxatqVA0ffzk7qvbGIzMtkoLnEvbZD2zX5rtDZ7c_1736793616
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <78621.1736793607.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.176 as permitted
 sender) smtp.mailfrom=martin.m@suddenlink.net
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

After installing ubuntu with orca from one of the standard ISO
images, what I got talks just fine in orca and I don't want to
kill that at all but, as I have posted on this list, I also want
speech on the command line consoles.  After getting straightened
out on the possibility of using fenrir and espeak with
speech-dispatcher, I am gingerly trying to go about this without
harming orca's speech.  Does orca use speech-dispatcher?
speech-dispatcher is on this system and if orca is using it, that
might cause problems since there are 2 consoles using orca and 2
consoles with no speech at all.  What ever I do to those mute
consoles should not disrupt anything related to orca.  Call me a
wuss, but I have messed with unix since 1989 and know what
horrible things can happen if you blow away configuration files
that just don't happen to matter right this minute but will
matter plenty the next time one boots or when one switches from
one of the terminal consoles back to orca.

	The system in question was installed from debian bullseye
then later upgraded to bookworm.  It currently has espeak as it's
synthesizer.  I can do things like activate one of the
command-line consoles by logging in.  I have a bell as one of the
prompt characters in that string and when I hear the
piezoelectric buzzer beep, I know I am in.  If i run the command
ls |espeak, I hear the output via the current audio interface in
use so that is all good.  I just don't have fenrir using
speech-dispatcher yet and I don't even know if speech-dispatcher
is being used by orca for sure.  It's definitely the espeak voice
that's talking so I feel like I am almost there.  When I call
fenrir, I hear the start sound which is 2 notes rising.  If I
type Control-C, I hear the 2 notes falling so fenrir is trying to
run but currently has no input of shell data.

	I should know the answers to all these questions but
right now, I don't know quite enough.  If fenrir does work, this
definitely will allow me to use the command-line terminals and
mean I don't need a terminal dedicated PC just to do the talking.
After hearing espeak reading ls's output, I pressed Control-ALT-F1 and
was right back in to the mate terminal in orca and the switch was
seamless as far as speech went.  Thanks for any and all advice.

Martin

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

