Return-Path: <blinux-list+bncBDYPVTOXSQEBBLOXQKZQMGQE34MK4UI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0E28FD59D
	for <lists+blinux-list@lfdr.de>; Wed,  5 Jun 2024 20:17:19 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-43fb02db8basf678331cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 05 Jun 2024 11:17:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717611438; cv=pass;
        d=google.com; s=arc-20160816;
        b=QJvFJTxFdwq92GpJGdM2zV9YFDCVsQvQpPshPfvPd+Oj8jpZsNaqK+bXkRGOgfnuuN
         KuXtygrT1nZSbpoOeFK22rCHd7vtvij7aEeDIGgQR38C6I1SavHaqt10WtMuddFv8laH
         i1pa5kpfoEhvrXW5x1Jwu1IcSd1joSfAaLD3fGIvn8GB1dV9ep0PCh3jpc7jZaGnbr5B
         MIESuE2iNgEmMFameLwQ5fsKffExC+T8+Qu90Ye9GPNmFFb2KZstug34ACXXxdcAuEYF
         t1dyJSR1ObVkZJ+P9nKmjd8F2/vumu4DKeP561EEVLxQyY5wljioGPO5X+NjoStibVf0
         6eOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=vZSAGyN5sUm4vrZEwpDrcfVdN8D6cG9gjiCYxHd+urc=;
        fh=F26byLDEvNEUapYlNQYR2NEmmmFcipVP1xEt4HCZ1Pc=;
        b=HSMJkRtsHI1meHoho2ltqzLqi5rUVfk9EYyrrxSmQgVoXeFc6Vob6NZU+CxFLwTcfD
         w/73rJ/kJ/dVwTiBvvsq7AvCK7C2IhXF9B9K8477TXMkhUoBJjhsmEkGtv9BgHkbnPoy
         AF6XbeCrlS+A5tcbUNtG1D39Q2jLbIKjDqhYMafM28JyjO9Ut86K72C3ndB6g1ppHYEY
         fVEhXAj8Uyb+sxrRVGnPkiT+v72yjFYL9fJRGBYJftA+9sOEKPHfXS8GAsygewiikz35
         uL4mmA2/uUKrab1lfwPyy6yQu7Qdce2JRD+KlhBBza0ZGtCFzaLrSCQcQ+oSS3ok2H95
         fPhA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717611438; x=1718216238;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vZSAGyN5sUm4vrZEwpDrcfVdN8D6cG9gjiCYxHd+urc=;
        b=SIeSRxX/Ydk9ZuUnU8aZosSQo0eawtoSTQESuog2JS1Aq29B/0343iZekZZqzpyTdX
         +Ue884c16kbiD8HEC7MArXoF97Z9pVpUW5G2K0skH455RWzMsaJbcQjBrpVyFWl0dM8J
         r0mqFmW5UtQh8vE3ZVLkjpsJvLMLL+J3/h+qfyoPHeFTd25UoIy9yew0cGXZJLeGizPM
         glbwdEvdg+FSm2roLO9D8X9nsQT4KsfXNs+WPQXxxiq9bj3WypL5WbxU3Iu/1R1S+Mn2
         ZwJdzKVio7cff0klM3rbS4HDCXcwE/VAObe/nO5QZRfN1JjALUxg/dSPD67EqVKjQ4PR
         6HbQ==
X-Forwarded-Encrypted: i=2; AJvYcCVT39rkfTfZvKP+TwRUlFrOEgzufKmoxptMnq6Zmb9Jub5fTeehFa0AYd2uAp2V4NP6fe4GC4DfmNd/xNtpw02yt0VVrh7qdYfr
X-Gm-Message-State: AOJu0YxbQ/JdBdlXeq32QqmBKg1UXP/g9PG22SMwwH3L9vpQLTgvgZqN
	/l1+ooDnqB/OW/uJnMsit1lWsCzEyz1BQb+ilZcvdOmCyH9Nqc2gIAYaAwG7HVs=
X-Google-Smtp-Source: AGHT+IHcOv3lE3Ta7w46cVXdpfZ/msVGDvPlqJKLw1ShWNc1ucP/xX16lwSgR+LoSM6a8nRuAnyDdw==
X-Received: by 2002:a05:622a:411:b0:43c:562f:e07b with SMTP id d75a77b69052e-4402b5f734amr39327051cf.7.1717611437724;
        Wed, 05 Jun 2024 11:17:17 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:342:b0:43a:4dea:1acf with SMTP id
 d75a77b69052e-43ff12a3170ls14025581cf.0.-pod-prod-01-us; Wed, 05 Jun 2024
 11:17:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVwGFw4qC3+R2L+y3yYQ7dJJe3q7BlmOGQr4AUKdKVb6nmUoTUvV0x3uMXsXKU07TIpsWut3XByEPbTJj+8z0PAl7wiYiiAXoracJs2
X-Received: by 2002:a05:622a:15c5:b0:43a:d430:b678 with SMTP id d75a77b69052e-4402b65f057mr40045801cf.32.1717611436596;
        Wed, 05 Jun 2024 11:17:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717611436; cv=none;
        d=google.com; s=arc-20160816;
        b=zpCgkAkfImTQzYLBisnIcQP6fwNQuvv5neQ2ZRDIsbjQg1Zjwct9g7m9gU7Tiz8R2d
         Vme2FZgK1IJF9VZuj8FLWcG8Pwbd88lQcFZ6tOSamGnVYPvg7xpvgSc6AfFEuuye9ySN
         pBRr0JrISRkx1Zndpu9rkJBdz9wZZE+M7/Yj1NSid3Onw1KsPzp0qYCkkSxBubJ2nOQT
         mDrfGiVeMaSJEqGc9zmcB2av0SgXEURXL8AbcRuYRfsDXkhFHuIQ0fkQk8PEf76ujUG4
         yc5bSuKax//zwTbdA+b8+9d6M4e5mrR7DpJWUsK6V42+e6KvwCr7QSVnJUpxqJznqHxu
         JWXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=jf30v6pAy3N7TRNpbflu/VhTlH9LJ2rdY54DqtXPnAk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=oLPrsN8Cj7+uIvMT3/Perwd5MpvjFuUiK+oN6C0lte6Z13UpRnnkm401pH6y13cCDX
         0YbW5PIo4zrtLH1PanxbKCuu+p6VWMclORtvXvMVfmh2pP8wc9Uz7OH2eqvTHhfQL3Zn
         ArZiNPKqduVm5hiLmDX77abU+6/7W1tjahQN5SbTSKTS8hd9SSKbuOqX9K161lu4c5SR
         ghID2q98q3FM18Gh9Og+SQqW3KJDhPxUKEBFD5RB2e7wvcb0b6o/GAPM+sfMH/WI81Ke
         to/hHeDoffQ+up9EwfR2w0mzCTUd0PHkCVaKpo3lI7nImST4rZ13C7Iov2Z+1MDjDMgV
         rCxA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-43ff2466940si45935301cf.260.2024.06.05.11.17.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 11:17:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-360-zD82lWNAP42ImRdRlkb3FQ-1; Wed,
 05 Jun 2024 14:17:15 -0400
X-MC-Unique: zD82lWNAP42ImRdRlkb3FQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 306381944D30
	for <blinux-list@gapps.redhat.com>; Wed,  5 Jun 2024 18:17:14 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1CB3819560A3; Wed,  5 Jun 2024 18:17:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1A2FC19560A2
	for <blinux-list@redhat.com>; Wed,  5 Jun 2024 18:17:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 880D01955F32
	for <blinux-list@redhat.com>; Wed,  5 Jun 2024 18:17:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-692-caVPNhxxMa2F4H4chZXy4A-1; Wed,
 05 Jun 2024 14:17:10 -0400
X-MC-Unique: caVPNhxxMa2F4H4chZXy4A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VvbJt5f5NzGVQ
	for <blinux-list@redhat.com>; Wed,  5 Jun 2024 14:17:02 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VvbJt5XjWzcbc; Wed,  5 Jun 2024 14:17:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VvbJt5TW0zcbV
	for <blinux-list@redhat.com>; Wed,  5 Jun 2024 14:17:02 -0400 (EDT)
Date: Wed, 5 Jun 2024 14:17:02 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: installed makedeb on debian
Message-ID: <a64ac9cf-6bc1-226f-5971-1a435db7ff5a@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

The mist clone link is:
https://github.com/makedeb/mist


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

