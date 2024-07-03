Return-Path: <blinux-list+bncBDYPVTOXSQEBBYVPSK2AMGQEF64MWQQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id CC809924CAD
	for <lists+blinux-list@lfdr.de>; Wed,  3 Jul 2024 02:14:27 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4465aff370fsf53765181cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 02 Jul 2024 17:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719965667; cv=pass;
        d=google.com; s=arc-20160816;
        b=SBiuak+aPYM8ZNDRhuSo4bk9I5/Jm6vyeAbWvizKc1cBTnDg2oIePPQZHVO2L1jR3l
         +fQpAZ+kdFfDm25DK2lP6P/XkJpvI6wVSet/mAjMe44gBIV/KLKCgiQiFsSNwg3eaLVV
         05tPo+RPdV78GC3SGIIWkaXN/D7GOwIJOeQ94racgZMb5aTG7AJxbau6gE8uw52Zn+wt
         Px2on4gp4or0P4v/SK+Aq4fQEHXyGxmzS3MTvCqj2Te3Acu6BqrbG7EYfP+L6rxQ/4ps
         CVc6eeFc7aoI7yUnI7sH4ioUeWw0yr8gqw+9FE5MkQj48uybFa4kRx9/R9dbuNLRw1Al
         OKew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=ycuKMQSDcWPSlQOJEADB51ducJpoccA7nyZckEGvLTY=;
        fh=SXDcAz+orb3KbXEPsL1uG6zLnMPaeY0rTLtrgzAavUQ=;
        b=qFKQkTTZYA2Secc6OUDJxjlq7RKlPDaLQdaQclboBD63xOOQVxmMMJZxB7Nt6qJiAO
         HvmRZlgiwozlE0B7cZtkHdCc6O67QVghU1MPbwTjP//nNHbkXlFiGBFiml3RWDp5xOm9
         3tLJhWaHvjJP8jzWai7bFFbUJltLaIImO+SdQyfmwgtxP1shJJVE6LPARETi7LUJxJEs
         EDSmZAjg0TK8QtN7GOTx7WdYLmRLMaS5jPrsK3VzkenO7o0hlpEH/yyAnOfFj/AcQNoo
         mGd1kMxT+1JDnrmm8o+UzVu6aKbBg9jYenMSn6pP951fTEqE5+8uDIseRjUW+f2nzRIK
         wlxA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719965667; x=1720570467;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ycuKMQSDcWPSlQOJEADB51ducJpoccA7nyZckEGvLTY=;
        b=U4cBdlW/aiCRATbPJ+AjZznsrKM/or4x7W93/eCt0JFnnVC+qk+9d0P8a1zp6qv/Oh
         NllEuhT/8XdN+lTnfI5RSvCBiu5FCLhDGBDVgh0+dKgBSBw0YRZPUg38egwk0hT36dM9
         RqA//xNskaze3xyeenXx2RwO4N3jHVklX56DMMmDAIS0dyz2FhEWX0bjHCuhxmGl4DXw
         WXjTfiy74R+2DeqJYdNoIW6/SgIrt7j1elaZXuDDMxUGBmfPR/SuSj0u7ghzv2BPDac5
         +3YETADWje8WPE4sUVRfD0GJc76y/iLnO0TLWNF2i53yduSDpqZQXZW+M8w+OxRuuday
         6bNg==
X-Forwarded-Encrypted: i=2; AJvYcCXDoQm29VpZGRWrPR1Z0dlEzcKRbTnlFDa3Wnfxok5dlv9y0TldEsncv42BE9qlKyePWmnH87LDBjowB8nQm9k1nP1src83HWfB
X-Gm-Message-State: AOJu0Ywj7HC7+9927Tbq8UxTiw3xCz4MSE2pCnBAJWd5MVhyQaXpSesR
	wWBen+D78eEXza2tSumZUKP+ToW6cLkzjNsvNsIqTjwkXVW0iXZ8UII3Man9Uvo=
X-Google-Smtp-Source: AGHT+IHK91vYdkA8F06UlTzh/o/ya5peWk0zfggyxjeLQVwo0rFRy3ZMAJgG3Js5DWMlaYSkZPmpCg==
X-Received: by 2002:a05:622a:8f:b0:43a:a813:65b with SMTP id d75a77b69052e-44662e05785mr123040181cf.40.1719965666638;
        Tue, 02 Jul 2024 17:14:26 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:34f:b0:441:5568:9dea with SMTP id
 d75a77b69052e-446529b3b36ls73986881cf.2.-pod-prod-06-us; Tue, 02 Jul 2024
 17:14:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUyd/AqJyMHjuexbXwyqMw5JvhT04sd21Kr5+d1ag6WAdUwtnXjsr8C5m0lld6boQag9QCnD0eMa2rrfmYt0l4kZU9t1qJBESYCw4rd
X-Received: by 2002:a05:6102:509e:b0:48f:3b01:6835 with SMTP id ada2fe7eead31-48faf09bb68mr12693933137.13.1719965665905;
        Tue, 02 Jul 2024 17:14:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719965665; cv=none;
        d=google.com; s=arc-20160816;
        b=qegPXk2d3R8dHW+RBW9y0/yM5YFUX5rMVtIXDmysz3zma7B9/kTp9kXClN6grKeqlD
         Xg43Xco9aPC39RIF3DKX8EeVyfTK++7D026Fc2TCyUHn6HRRQwWY1nB0c/oz3Q9WldW8
         LPMlXt3bCJFnV53Ne64e6dvVdJC6+h4ZKHkFXKgs2vFwHlKYi/RE28DkLT7x8QAjJKgN
         opjn/FKsaw8AAprvYGwXnSPf6got2HlRio4Ff7+PxAnXGxNZUSYDJtfrVjqKH3lCBVj3
         MBywcth8jMkPMqa/BnmjMsiys1vNA7xXSQgv/rrfTnoSFWeLni+4tEhx2SCQmTMMG/A1
         uI+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=rLyU0yAodltn0UtnlLseCtHzy+ceHSamNrZZWQs8wbg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=q9WgcdVckFn16J4na1EziLqKnkYKHYn+0tz0Lp1eqXoePQ5G+uJQnUr000qsggGuX8
         yhx4GmNghgF6a/Zv8u5Wf9pfZStCJNSM/hq8XH/cfXO8vioVB+owbyxvZgnSYyCyoi3+
         uAOGxbpmjB8elJXAPv7VUJl9J3AoSgQM1eHUsIRw8xKx85yG2ZljKIM+aq7Ew7n7KM1Q
         vcn5MQdCpC0lx7EuJJzKQ3l1wiFcEKr4mUM3RrkRcDUmuhqsudrkSgi3e8ozKYTdqarh
         spY0WZ96+6USW4fPqqA7CUpvsORynpnFLPm3Tapj4EnE9Th+nhztMpxrcP5QFz5YxtCd
         aa8Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-79d69260d4asi1101539185a.76.2024.07.02.17.14.25
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 17:14:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-413-lphedn-xPJ6bAmKSMRcjPA-1; Tue,
 02 Jul 2024 20:14:24 -0400
X-MC-Unique: lphedn-xPJ6bAmKSMRcjPA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D3AF619560B2
	for <blinux-list@gapps.redhat.com>; Wed,  3 Jul 2024 00:14:23 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C4D751955E80; Wed,  3 Jul 2024 00:14:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C26C61956089
	for <blinux-list@redhat.com>; Wed,  3 Jul 2024 00:14:23 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4689A19560B0
	for <blinux-list@redhat.com>; Wed,  3 Jul 2024 00:14:23 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-411-yLX0Z7y5OHSCOhSRK-4YvQ-1; Tue,
 02 Jul 2024 20:14:21 -0400
X-MC-Unique: yLX0Z7y5OHSCOhSRK-4YvQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WDKyh6LfZz4T9P
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 20:14:20 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WDKyh66nYzcbc; Tue,  2 Jul 2024 20:14:20 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WDKyh63f2zcbC
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 20:14:20 -0400 (EDT)
Date: Tue, 2 Jul 2024 20:14:20 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: fedora 40 workstation status
Message-ID: <5df48f99-6919-2540-b00e-2701493d415d@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

I have some secure boot stuff on my machine now.
jenux/shim-signed 15.8+ubuntu+1.58-7 [installed]
    Initial UEFI bootloader that handles chaining to a trusted full
bootloader under secure boot environments

Apparently jenux does do secure boot and there's lots of tools on
archlinux especially in the aur repository that support secure boot.
With jenux it takes a while for it to go through three sound sequences
third one being the empire strikes back and then the voice comes on.  Be
patient on that one since it could be you wrongly figured you had a
failure since jenux was thinking about your machine and resources you
have.
Gentoo is not like that, you tell gentoo what resources your machine has
and optimize the software for your machine after a minimal boot up.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

