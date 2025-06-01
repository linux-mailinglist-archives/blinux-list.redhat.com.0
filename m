Return-Path: <blinux-list+bncBCFJ3VNT5EIBB2GO6LAQMGQEZA5FHDA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mail.lfdr.de (Postfix) with ESMTPS id AB270ACA038
	for <lists+blinux-list@lfdr.de>; Sun,  1 Jun 2025 21:18:03 +0200 (CEST)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7398d70abbfsf5221181b3a.2
        for <lists+blinux-list@lfdr.de>; Sun, 01 Jun 2025 12:18:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748805482; cv=pass;
        d=google.com; s=arc-20240605;
        b=eA/hbMq8eMjhboAM/u1HkXb3Yim0LKJjsQWsfDs7lnxNGVlcHzWMsIm+Xya/eSgo7b
         bvbKntx7VXGnvr7bMF29MFjADWZUN8z2bvvPdl7BO/3RZlsNScmOi7vSA0xHEZgJqe0l
         hH4Iy3kr9O77yLyXfNZaKhNw8+MwHto0okq/2C3+MCZI4uMsjktndVwt+oZivjdVlex3
         T+G98Kvrom3557znetnpbfYQJrVf2LFfn1Ez4HGtoz0Su/JWtnqBI6kWu1mWjOiyRIhU
         O4rZUhIV8a22t3UlCDz8kuYvf/avWBuLit3eNB+37GbB1TgI09rHbqx6qHbK5D8mo48G
         nGyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=9HgEfXGVrHRFPj4QuSxe0KBdJvz42v/JBjoVz4rIH5E=;
        fh=t0kvKu319fjzX72TVboXHQA9gJmDo7Ggb4gxrq/qQkU=;
        b=f5XGnKCQBX4UNmT6ehvOG0hgh2598e5kFhjFFstikRdOuBNtrh3LpsDookviM1v7sG
         1LC4bIYMIa6LHLZlqBf+L9Yp0bBAerdVfdJbxSf7DHAOP3CrRd7Wn7n20v1kgXf6wxRa
         c06cTs/wsE7Q6rlqXnpVhwnQ1IhYkSagGeAegBE6SoQIQCEel9qHEm2C208sH4OqpPmA
         zxTMUAMEFfOqLm0r8w9InAjN62hHEDSSZxkgTeUtqA0kEczlkmQPh60VUAYh4lG/jYaQ
         jsVMC81SXBs7z85PsIWZfJPxDgo9zr6SNBsTKbe/f6AdO3WHEYiuhVYhDKWYZyXG3/WL
         iSQw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.52 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748805482; x=1749410282;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9HgEfXGVrHRFPj4QuSxe0KBdJvz42v/JBjoVz4rIH5E=;
        b=tTEQhPhCoLKJdV7il/ntts3SVbE9G7VxkM1XTQbLv7FmTQtrIASdWYkY7cePBeVJpZ
         p/sCNjQhzVY1cwQepoV6a34Jw/No0N1Y0aB4eIpPjOn6x47f49ZZcz38OW+oFbHvtFS0
         jR3AAtm1HeGmXs/zVbYPPe9TVDFgM1Vb5VSA9F727oFnkKcqjCD/4x2Uu4USS7uXwq66
         p86wUWb9pA7SCkFz78OG4/RO51RfWG37qCHPc7u0xdcPDWQzmkkEKzA/bf5d1RaAO3HF
         CTKVlpdXceHrRIo9kwUyRWaTbLWsxKzBLmsYQD10ALsHXoDDH1JaoVcs9z/2ZgcNg00q
         W1PQ==
X-Forwarded-Encrypted: i=2; AJvYcCUf9OV6NkSAXkX7SLnlESasAhEh/IILyfMJ2Q9k2T/WU0IpAaUltg/rup1VkovfJhu1P4hJZw==@lfdr.de
X-Gm-Message-State: AOJu0Ywkw5w13xWxJcPRq+7k/R5pMzJhLozRUO+8oO1FWWo1bJxC6WQd
	OClf99ZmJm6M5bY7ySiQShrWi3mD/LflK2CWZoxNJc0GmdOk4dIVsaSLA+tjAr2WRaA=
X-Google-Smtp-Source: AGHT+IHTeKStDcx6iYnbMKF8VI3CXaMQ9lhKIXcPGZSEuFl0l46n+1UGeyOT5TKOez0pWGa6UliyZA==
X-Received: by 2002:a05:6a00:1a89:b0:742:9bd3:238a with SMTP id d2e1a72fcca58-747bd95487dmr16681891b3a.4.1748805481538;
        Sun, 01 Jun 2025 12:18:01 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcv1SYJAG8+2hztntaOxbQuGHSNdTOt+7IG6j4SxfI7Ow==
Received: by 2002:a05:6a00:244c:b0:730:762a:e8a with SMTP id
 d2e1a72fcca58-747ae45e34els4276745b3a.2.-pod-prod-03-us; Sun, 01 Jun 2025
 12:18:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWfeHAV1hEFtm/MwSOuYaqQcbOvM8nGkSHB8uvHiqvkWSF1aSg9mJQEKimiz2uRfm+qFSYVNxWA4P+LYg==@gapps.redhat.com
X-Received: by 2002:a05:6a00:21d0:b0:746:2ae9:fc45 with SMTP id d2e1a72fcca58-747bda0d3a9mr12848998b3a.22.1748805479836;
        Sun, 01 Jun 2025 12:17:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1748805479; cv=none;
        d=google.com; s=arc-20240605;
        b=J8e1zAQHiHinPIvqCHToG6R9+FAzvlFrTMl7IJ0WZkp0D0dKsq0gIHyGbVvBwwl6bH
         2rmXoZFG7Jf0xhkxeywLkaWN0AwVM3/X7BcX4hJPw1Kdk0TfSNPl42Lob0apsB5V/lmr
         9DisxH4o7jAN3aZAWhDG0Z0t+hkIfLL3ttBo0a2lj+0zS736rzicvdaE7e0UPDAurs9L
         W7YocfNJpX/EWkwGGHYX0xHJghlTrhO8FhwYigj2zAEJVGSMrn3T3j3NRHgoa6leH6Q/
         yZF+wEq/lLA3JNt/e/09lE6//SHbc7SC0bdPEW3AuxYZhbOrn0I+rcyHzuN9eDXCX2ep
         MDVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Iq5Qv8QmUjEtpyhL/xAMmKHB95D5/MHjT4Ggm//Phbb1Kmoa8rTglOVej6Rt6+z5d/
         PU7Lu+fTgAcbBwPZfrhscrL9ItMJmslSgo0lZLA+B+4/CzsxBqUmW0vOfJx1+eqKPyrC
         D0dmrRyvc4yzUHCkF8l3/Hrk3CYVSRXNkyJ91qz5IcTwAXRdWWBhyP4eOtOv0bXTWRQ7
         v9Od3ZG6ETmkTi0aPx0YnuQ+Wtzv6VIeR9N2sPN/97uS8/XCCoAr1LF8XVlN0JQcmZ9R
         gpYvp+DzxPwKsOi/B8Foxw4MFLKZLi+mMGZMvRh4ALZUoXxe7Pf5IebR/sW8ZAvPM+lV
         lFeQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.52 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d2e1a72fcca58-747afee2422si10316570b3a.319.2025.06.01.12.17.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 12:17:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.52 as permitted sender) client-ip=209.85.210.52;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-510-4SuAZxELNNyl8RFyeDf0VA-1; Sun,
 01 Jun 2025 15:17:57 -0400
X-MC-Unique: 4SuAZxELNNyl8RFyeDf0VA-1
X-Mimecast-MFC-AGG-ID: 4SuAZxELNNyl8RFyeDf0VA_1748805477
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1544E180048E
	for <blinux-list@gapps.redhat.com>; Sun,  1 Jun 2025 19:17:57 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E86C130002C4; Sun,  1 Jun 2025 19:17:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E5EB130002C6
	for <blinux-list@redhat.com>; Sun,  1 Jun 2025 19:17:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 689B41800446
	for <blinux-list@redhat.com>; Sun,  1 Jun 2025 19:17:56 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-550-2UPg22x1Ol2VE3yFv_KQww-1; Sun, 01 Jun 2025 15:17:54 -0400
X-MC-Unique: 2UPg22x1Ol2VE3yFv_KQww-1
X-Mimecast-MFC-AGG-ID: 2UPg22x1Ol2VE3yFv_KQww_1748805474
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-72ecb4d9a10so3979203a34.3
        for <blinux-list@redhat.com>; Sun, 01 Jun 2025 12:17:54 -0700 (PDT)
X-Gm-Gg: ASbGncuBTlXu6GxYoLfuaDqidsxxWJdEL88zRYMA6mqoVWFSZbl20tzIZQTNdBK7CDB
	xmSiDQMStZHWY1d0E6j/y1Xk/Mkq92s2OF/UTiVGOtgFccLnxXnEbapib97lwxG27JBtOldoJn3
	Y/9Ued/YhtwwN0ZwIV0fmCDH+2A5235yGTioFoiZG4YbXcPX/33OOrByqNyqckLoLSzZJN7vYOJ
	qo3VjyVDhCKGdunYpnKd/3WSZioRjkK1Mf18fxAlaknDH4IqSJX+fyKeDiBPJauxQhXVLUNWTMM
	9h9xNA+7Fqd7PtjEXLMtMvC3qQhx5aVSajCeSenaylfutlAUEQg0P3kUm8n1+XURWKM+k/d5cwo
	rMWckROM=
X-Received: by 2002:a05:6871:8910:b0:297:24ad:402f with SMTP id 586e51a60fabf-2e92120f9a9mr6101654fac.12.1748805473336;
        Sun, 01 Jun 2025 12:17:53 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d1a7:15f7:e8d4:66ca:ee37:f5f])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2e9067b52ccsm1476858fac.20.2025.06.01.12.17.52
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Jun 2025 12:17:52 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: If I have a question about arch or manjaro, would that be better for
 another list, or is that all right for here?
Message-Id: <97CB0C36-A0B2-46A4-9491-680B80319FF3@gmail.com>
Date: Sun, 1 Jun 2025 14:17:41 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: BK2j0Qn1Q0SbvqE8r7L8VfVTkCyzfsbOP1z0fHkQsmo_1748805474
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jTvpmwT7nJz_25EGeE7G-Pe1IBeqesRZFM8-LFzBg2M_1748805477
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.210.52 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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



To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

