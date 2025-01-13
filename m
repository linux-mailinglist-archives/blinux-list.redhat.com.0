Return-Path: <blinux-list+bncBCRJ7NN7ZUGRB3MKS26AMGQEVJXURFI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD2AA0C3AB
	for <lists+blinux-list@lfdr.de>; Mon, 13 Jan 2025 22:28:15 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4679becb47esf115221331cf.3
        for <lists+blinux-list@lfdr.de>; Mon, 13 Jan 2025 13:28:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736803694; cv=pass;
        d=google.com; s=arc-20240605;
        b=b3aKUeGqOIR/++IaUXT/33QNy1ciZcQt2I/H8TtFNUYTBJHFeysgCdOoG+DiKzdCzS
         al4cvFGV2BZLb2y5bhqQW6gQcl57JtgUJUqMBhHbF4kwfXtgC0//jDzHT3BVSLEsd73T
         PTzJMouJsOtIWUCUz1fylki4MTfg+MYeJbTLyCyxs4Em9csKF6yAS6ZCJDZxzD4VZWHr
         fJoWuAnSQiF/znrLw0TxfhPeElAaLZcN/vNY5MI8Q3fMtASz8+m618d7tyCeNp7/jFYl
         b52EjRQtJ1AjpEngpxFnqoxHybEZILTwMt25oDCvjIh+qk70/wwuvEujO/wrQqTXiCIH
         trMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:from:message-id:date:references
         :in-reply-to:subject:to:delivered-to:mime-version;
        bh=noPRUiWthrEytXOsU4Fc1WlFIMhfEW08PUUVvC9t9pM=;
        fh=s9qbkpn7VSfCJF5npopu7EsCjaXdXhmvjxgFfj9bRH0=;
        b=AZQpQLM60+gfPF/pyrRqnRdP0A1N249PEuN+PoZUv0IiZrPm2XsGhvIyQCASYUzcZX
         wnbzp2JeGLUgJwQVGZsGBG4OWFxd9gHbBUXivAZdMB1MuvJQyy8cbqwebNbV9yymEAbp
         8JK8kXuVgVDgDApAOO4lervGFlXLQ40yUXa+8ufBKdG+N19rQ0lvJUllMiW+jOFmdQn1
         foWK9FB35YkdfmssusuauxPNYXnNIGN1wtZAbrMI3FBlmwByd3+6tvtM4dHr7cGqHQaD
         GJ7JY2DQFRCXDB02NkzXGo7ONX3VQIlZq8gip7o8GYItB6c88YNQniAJQgD2VII0Q97T
         Jn8Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=locust@mailbox.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736803694; x=1737408494;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:from:message-id
         :date:references:in-reply-to:subject:to:delivered-to:x-beenthere
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=noPRUiWthrEytXOsU4Fc1WlFIMhfEW08PUUVvC9t9pM=;
        b=W9/TcayzUZTkMxpiy4onGmoYRTNtISKIbg965M7oNAjfoyAex3azgHECWXbsIhVMqM
         a8yq+Ur8Fmv2vBFAYiLIRy5hkIra+UosgWhelsPlKinEPAxkrhC69D0wxFNoSbHvFKQb
         0ZirhVK80s5cUvlC2ZfXltsJ956DacWZeGseCuIZDVaUKoQPAjHHxEyewLyTzvnc9197
         QIm8IprcUefHWqgX4K5viZnXAa6ywYKArv+1JyLk3SrB/J0eeYjfouQrkavj0MSdm5Fi
         kcQcV/bEiu13rbgqfBm6GREp3k3FybaBHRp33504ErrmcTEcTAxnRXaKkLoeChSkg6sh
         zGwA==
X-Forwarded-Encrypted: i=2; AJvYcCX8grHCW/yamLn4640b6aJwviRk+wtAJGKJyqyQbIPpw7merDODdHYGymJmd9nOXCoWVM7eqA==@lfdr.de
X-Gm-Message-State: AOJu0YxA+6StMniROc0FICIZg45dSX4fkfUYaHVP0/nvxHnM4Bb8FU7j
	FgHaMlP0a+gsoYQ3eof2FFqaYbT6LlRbiSk7zy0TJ7Il5b8pd7Y+BW7lLAYr1sw=
X-Google-Smtp-Source: AGHT+IH0u2rIDai+GTmvylGc5DBEUp+Y+e3Xywl+2NeAu3/WCCfRRBBQ2TbUYmVEwnaQmQhKRJ5D4A==
X-Received: by 2002:ac8:574a:0:b0:466:957c:ab22 with SMTP id d75a77b69052e-46c71081973mr392044461cf.43.1736803694087;
        Mon, 13 Jan 2025 13:28:14 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7ed0:0:b0:467:6771:ac55 with SMTP id d75a77b69052e-46c7ab8008fls63956561cf.1.-pod-prod-06-us;
 Mon, 13 Jan 2025 13:28:13 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWEykOwboeVrHmX2NpeLk5szn5Z2in9PXQ3p0fVzuI8V6ODHMzLazjg6WFgbwSKSmk6hFRjRrJOhJ2J4Q==@gapps.redhat.com
X-Received: by 2002:a05:622a:1a83:b0:46c:8373:d5cc with SMTP id d75a77b69052e-46c8373d681mr275139851cf.2.1736803692927;
        Mon, 13 Jan 2025 13:28:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736803692; cv=none;
        d=google.com; s=arc-20240605;
        b=LtSNQAHTQ9qfVh2ycQKdekCC8lLwkmHpxQ0ji/TQ19UgnxAl9RLiw0v7C7ggfs6TSH
         PcHS1T1yncPeKRVeTmxz2bOVUJqKnBllQufFUvcWvpiHJypaJ8OBfDSL7D1Nas1BMATu
         2v4UJ0fX9aPUfIB21IMBWmy1PFjXekpDlnTCbJMrgcZySreyOR+RrQUTpvjMKc+cW4Y1
         Bnjbr0bJXvNoXN6G7J75HPhY/FZDR42riQ2wKEvZH7c1OxzCii9VRg9IcOX071BAz/6A
         dOFXpIAxiARPtfG1WG0VgnHvtbOt8r7e2K8goBaGECKKk6VJO1Pu3gs31G7YffEjoDD6
         vEvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=from:message-id:date:references:in-reply-to:subject:to:delivered-to;
        bh=1vSXojM1YEe2e/PGvlEGSw722Xy9w47uGIcvueAnZ1Q=;
        fh=Lp2QmQ7Fdw3Ea+5btDbjFLFXY+91cwFM9sF2dOL5lEk=;
        b=dm90CxwZnb6N2fW8GFkKPnDgAMfwTwL3WIBNowx3/XyQd/+JBaake6Lda/fm6A884C
         JBW+CiCPhOXeiXYjz/e2dSN0JX5FfCZ8E+lTJYd8WnkSHSsKq00aTRWUF9vi7pkFkryU
         Wrf5upW1IGUz+w0AmZURLciox9Bhf+Ec1kzKeTNBmm8rD8eWGQQJ9JPJOIMDKqsU8K7O
         lvpPExCj37QOwajvUkEDztlAlm+UNMHopYUw24js0aISBiHNACYrwicyA+cibHRdVvO/
         1Tv00wUFU+gT57gr7tf7FkTN3UlmAsdXvL2fdYbRSNbL0M0tGS8a8Tq/3j2OrwhknMjH
         mA6Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=locust@mailbox.org
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-46c873321c0si108304841cf.44.2025.01.13.13.28.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 13:28:12 -0800 (PST)
Received-SPF: pass (google.com: domain of locust@mailbox.org designates 80.241.56.161 as permitted sender) client-ip=80.241.56.161;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-204-3am2eYNyMqWqBsH64Xapig-1; Mon,
 13 Jan 2025 16:28:11 -0500
X-MC-Unique: 3am2eYNyMqWqBsH64Xapig-1
X-Mimecast-MFC-AGG-ID: 3am2eYNyMqWqBsH64Xapig
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BBCC21956065
	for <blinux-list@gapps.redhat.com>; Mon, 13 Jan 2025 21:28:10 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B64D319560AD; Mon, 13 Jan 2025 21:28:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B2891195605F
	for <blinux-list@redhat.com>; Mon, 13 Jan 2025 21:28:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5120E1955D72
	for <blinux-list@redhat.com>; Mon, 13 Jan 2025 21:28:10 +0000 (UTC)
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org
 [80.241.56.161]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-397-vnrQZBQhMYCkdMkqYG-IdA-1; Mon, 13 Jan 2025 16:28:07 -0500
X-MC-Unique: vnrQZBQhMYCkdMkqYG-IdA-1
X-Mimecast-MFC-AGG-ID: vnrQZBQhMYCkdMkqYG-IdA
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4YX4rJ4PSvz9srv;
	Mon, 13 Jan 2025 22:18:56 +0100 (CET)
To: "Martin McCormick" <martin.m@suddenlink.net>,"Linux for blind general discussion" <blinux-list@redhat.com>
Subject: Re: speech-dispatcher Before I Do Something Stupid
In-Reply-To: Your message of Mon, 13 Jan 2025 12:40:07 -0600
	<E1tXPM7-000KS7-0c@wb5agz>
References: <E1tXPM7-000KS7-0c@wb5agz>
Date: Mon, 13 Jan 2025 22:18:53 +0100
Message-Id: <E1tXRpl-001IHn-1r@lapcust>
From: "'Artur Rutkowski' via blinux-list@redhat.com" <blinux-list@redhat.com>
X-MBO-RS-META: r3a5om7m96hq4r45x94tfz3budue1etz
X-MBO-RS-ID: b389f58de88eb70ba92
X-Mimecast-MFC-PROC-ID: Si5LwkJoJy9FG4fYctvJt_fUxHmebrZ7B0eK4TgfveU_1736803686
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 2
X-Mimecast-MFC-PROC-ID: M6PeQjVyAFQzlheuLWrSVTC3nNxKEZXJNYck1Uw4wjg_1736803690
X-Mimecast-Originator: mailbox.org
content-type: text/plain; charset="UTF-8"; x-default=true
X-Original-Sender: locust@mailbox.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of locust@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=locust@mailbox.org
X-Original-From: Artur Rutkowski <locust@mailbox.org>
Reply-To: Artur Rutkowski <locust@mailbox.org>
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

Hi Martin,

I am not speech-dispatcher specialist but yes, orca uses speech-dispatcher. But when you are switching to command-line interface it should be able to handle fenrir or other clients, because you stop using orca at this time.
Furthermore, the speech-dispatcher is a server application so it should handle more than one client at the same time. OK, orca doesn't disconnects from speech-dispatcher when you switch to terminal but still, it is a server.
Can someone else confirm or deny it?

Artur Rutkowski

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

