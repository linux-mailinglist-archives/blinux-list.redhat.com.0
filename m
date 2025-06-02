Return-Path: <blinux-list+bncBCFJ3VNT5EIBBHUE6TAQMGQE5S2FMXI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id F19F8ACA81D
	for <lists+blinux-list@lfdr.de>; Mon,  2 Jun 2025 03:45:03 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a461632999sf29907831cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 01 Jun 2025 18:45:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748828703; cv=pass;
        d=google.com; s=arc-20240605;
        b=YWx/NUeR7oAYVG/WQdmOrXZDR3LSGObRyfGYJXvMoHO48ftluj/VLKXGf4ahO3Jy8F
         LGg+tYoTJhjYqqOuRt6vgOCEOf/ROV+1iQ+l7tqFD9DD3SstILmFaWJLyYCzaZZdjjrA
         I1olWAiOlEInoVxppueAjH04+R4BfbDvlCvCHX7JwbXUTuq7rln2rUC0vnuw6bBsgjKK
         Fb25qRwsu09/UEvO61xPC03eUJKcIk0y3gqPlXH9SSvrAuTlDHtO9xrHE96jt1dwU0il
         uz6CKynOkJQSu0Z1GeWIfgg7byggYZPK5Q3148e9QlcWVF75Ge6CnlpOeLG5AKZXv60E
         t0NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=53zlJlhpT4/0PL4suBiDac2wgPcKYpD2vnc2ui7EyqY=;
        fh=1ozQxQD3u7o1GFYGjEC1PX9su9JXjZW9NMpiMrWjotA=;
        b=gUOuVlo8Sn7hGBoPT6s0uRuekn5cwiAIUAHmRz39nPoX8RxbWOzijv5khxc9tsiAt8
         1C4FnHb4CKgKxEtlunWpssGTfTGXydrUxcdI6grVYDP/a2cGhMnLLTeDugZuytXYmfdg
         HRtPFdjM8Tnbqp65ELWWImOAY0Tmdbd6/1vUBPCFxjpf3avuroa5oiQkUadRSLb+nBj7
         1s9nhGGtd+uJswqPdvSwGb4pnSkiYOEan9Hf+C8OOmlfhvozT68Gu1mBiqQ0tE934kyd
         YV4bFeSlIhoF+nkw9JONCCyvAuLadAkTsFq3y91lqlG4JFZfMyQuwytDX/0ZuReQo7no
         NJaw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.169 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748828703; x=1749433503;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=53zlJlhpT4/0PL4suBiDac2wgPcKYpD2vnc2ui7EyqY=;
        b=o6rJgLl0Xi2QFBMMHWlvoJZBpHK0dhFua3oD+iVFfZestU84VYEC9P7M4vODXONoHG
         aoKPy9E/7waV0cyVwAv1EsuwaNmdHNlsF93ZiaIclddL6RgPW9auG9vGqdbWv5Mfb4t+
         xv5LWOUQASVwAfqNG0FFW+RHMJYXXGGq4+Ri6cbx1qKavlgIGlW9xz/1QZpv4PLDR5DF
         5qCnqCaDSFylu6999i3es0zPoJN8XkuLb0ImPvtLyGzi93g7UzpxYJskmSxi0sQzejD7
         Kwa2roZDZTs0vylLsefZnQxvcFHTJ+Ovp+J6h7TjHdnljcYKp7K0A9Khvs51xZpWhbQh
         J83w==
X-Forwarded-Encrypted: i=2; AJvYcCX29ftdd6vjR1RgKsgjWqVshBlj5KRojmQAL7TaUIgwbKjeBV5mkgR56LhTwYWGw7Z1SmEGQw==@lfdr.de
X-Gm-Message-State: AOJu0YwDH4rM6EA4BJlHj88/+Kx5DdcDPlUj4XHrOHeLVwsXK7EfXlGf
	gjEqvXqqmN0W9lfvb4AMn7WfFWfoEne9IV11pRN1DG/w1fT194/69aEIslGIqoeyMYE=
X-Google-Smtp-Source: AGHT+IGZbu5m7pyH1xchFsRaePRlL6mzwZNgO2omhEC+utA4+hexoe6cP+Ck1Ai8lSVLfF79Vp8cXQ==
X-Received: by 2002:a05:622a:1cc4:b0:494:9fce:28f7 with SMTP id d75a77b69052e-4a44005c8f0mr164370081cf.17.1748828702614;
        Sun, 01 Jun 2025 18:45:02 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZd6Ru3120m6Avu1cNxUlo5hkIt4DiJ3OreLWUGIWzgOew==
Received: by 2002:ac8:48cb:0:b0:477:c8a:e60b with SMTP id d75a77b69052e-4a43243f0e8ls71161361cf.1.-pod-prod-02-us;
 Sun, 01 Jun 2025 18:45:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXG1abOUKBVussi1F8PFyu2UD98cUUOPpkNwfiVPt6V9UWDwe3LTKBQubwzY5NkNHeDjLDED1YaFYonFA==@gapps.redhat.com
X-Received: by 2002:a05:620a:1a1d:b0:7cf:a26d:5085 with SMTP id af79cd13be357-7d0a1fa46d8mr1515751685a.15.1748828701618;
        Sun, 01 Jun 2025 18:45:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1748828701; cv=none;
        d=google.com; s=arc-20240605;
        b=DSMBDcc6sCAhjSEITg//T3K5axrg+bCYba/2YYGEwnW2Yl9NpoEg71jf1ifXQ9mmZQ
         Svp7LcfCmHnYh+aaS7OxZaZpxzQaSNolU+OPijYPCAn3PMAX117O2cydV7haCc2gJrJr
         CyqNi+TWh8K9rBQh6EOlzEbW2ciMPgQzahi7EGXjHTD4UIDeITLfe5nN3xe/IfrZUL+a
         jjYqClucCDNG/c3vN4jnV9m5dJXQovC8sd2clqnm3Pxwb1rEB2qjYHI6OF6SwoEvan56
         MJ2wXg2kmVXeau/6V7HVL+/VV1OsjU8cJZ8Vb+YQ5WjPuKpisVCTiVEmBGbEwoAAQgR9
         Yugw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=FzQ4KAh4xevAeta34/DXMxMTwlEqxNk5O73SrbWBnuE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=L25dJbG9tBv+EfY0npOG0J6EWytBitJaEC3A60Tq5YyR9dV06lMYh/UJkW+ZCPFH14
         vA+U8ANxLjK/f4TQkaXW9ujr6/sFOvPdrfsvkDarYiwk8naV9RILmclOtBgcOKvsyaJO
         GmVXMH8AEUpFgyRD1mn2jEwDxQ6fhkI6t9BXUstLC0lHIvkGxib5rLlCEGnmY3Ln0LZC
         oBDvpsq6bqENBv84pGtLb8YMkw0qL25ANWKGNAU0rgHkVoly90WTDDyYdwYh6lRPG1KI
         AvnOZYOdnpZdAYWj4XZXp7PUTivYjQzYST2f5pqFdgOdd99bwQ9AOTElKzUm6yE/cyal
         Jkjg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.169 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7d09a1fcb9esi933876685a.349.2025.06.01.18.45.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 18:45:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.169 as permitted sender) client-ip=209.85.167.169;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-617-HIcWD40vOMCtx2O8vj5M3Q-1; Sun,
 01 Jun 2025 21:45:00 -0400
X-MC-Unique: HIcWD40vOMCtx2O8vj5M3Q-1
X-Mimecast-MFC-AGG-ID: HIcWD40vOMCtx2O8vj5M3Q_1748828699
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4A3AA1955DAB
	for <blinux-list@gapps.redhat.com>; Mon,  2 Jun 2025 01:44:59 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4512A1800879; Mon,  2 Jun 2025 01:44:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 421EE180049D
	for <blinux-list@redhat.com>; Mon,  2 Jun 2025 01:44:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 94AE419560AF
	for <blinux-list@redhat.com>; Mon,  2 Jun 2025 01:44:58 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-260-LOeEP5EqNjWWtXn9pqkqYw-1; Sun, 01 Jun 2025 21:44:56 -0400
X-MC-Unique: LOeEP5EqNjWWtXn9pqkqYw-1
X-Mimecast-MFC-AGG-ID: LOeEP5EqNjWWtXn9pqkqYw_1748828696
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-4080548891fso154324b6e.3
        for <blinux-list@redhat.com>; Sun, 01 Jun 2025 18:44:56 -0700 (PDT)
X-Gm-Gg: ASbGnctANZpcHbl2mDBNu/2ysBtUjqsyvOxTOxMb5Bn6FIqjEMqzPwCahGU9r/Yq5NU
	X6TVGoPyo7Z/laxm3s4oG7LkQkM40s6H5vSttAUtEysCQC9klLfhsGVmutFG2AQ0vW3WK/HGeZX
	z7PLvJU3l3xOR0lL8C0Sc/Xt98ZWyY9+Z4oAi0yk8+vCthHqKyU4vJBP8RqjX9hZlIwa5T6sVnm
	tBRMe1YohIHj79/QY1eAGTk4dcqhMqRXMF6Y17aXXglKWneX9fNpowzI/5JPru27/QgmI6m8aRi
	7DT0rjmtA3GqHId32LmScZowBcg3LciMOy2v/3PaYzSPs9klw20bsVcIOizwPLXgYRQQLUpK2QO
	PKmQIT8BJvuGZvX3l9A==
X-Received: by 2002:a05:6808:640e:b0:3fe:b1fd:527f with SMTP id 5614622812f47-406795f44f2mr6427117b6e.1.1748828695504;
        Sun, 01 Jun 2025 18:44:55 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d1a7:15f7:e8d4:66ca:ee37:f5f])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60c14c88f96sm1299762eaf.17.2025.06.01.18.44.54
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Jun 2025 18:44:55 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: arch distributions
Message-Id: <91B1181E-5878-454C-8E5E-F44518567720@gmail.com>
Date: Sun, 1 Jun 2025 20:44:47 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: JGY7mj1sH1NbiUTuHCoK4vAlU2vYepzDHdLoFcFIvFE_1748828696
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: bnOCK0ALh3M9VndSVwNyVz4ZB24n07ss4AlFP7pkvG0_1748828699
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.167.169 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I think maybe I might put arch on a machine.
I had tried Manjaro earlier today.
No Orca.
Also, I think be my eyes said it looked like a web page, and the volunteer said there was a next button, but I could not get to it.
For anyone that tried arch, which one worked for you?
I had it on a machine, but cannot remember where I had gotten it.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

