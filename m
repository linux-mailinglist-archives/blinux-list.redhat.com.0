Return-Path: <blinux-list+bncBDYPVTOXSQEBBD4TQ62AMGQEAZKTQBY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 028A191D41F
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 23:09:38 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-44501497419sf37476741cf.3
        for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 14:09:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719781776; cv=pass;
        d=google.com; s=arc-20160816;
        b=Saif+tOya3gLM5ApwiLr77CWqjbTRjEpNWMr6MXQNe3Zv+uzM6qckE7AI8Ye6lfXzq
         xfd8SJkpOynswTRzGV0HDgtzgWp501FlLSJxZjTIGvmX+H+504sNqZaJzg4mUlofUEO1
         yT2oYBlOMYRXclGaq7PEFVHTd8UmPtr2zlqvo8d3FWs/3RZpK1YpOsuIzyWLNfcpv1x9
         KSrrCm2VnUBX6q+KU7VOZytCypPb35p8I5DYIBrNNP//501Fa1grUgmuKcaVQ32TWmQT
         Y9aYs985387+98pkoYpkdP9ZITBPlS5nibwrEw3txrA0zDwOujMIQrjp1d8+t3kOnD72
         HTCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=PuoL+DkjHMZK+HKGVfW5geizHKNkl7XRXi3Bnk+T21k=;
        fh=a37XNgzVf3GJlL5zDNQZ9T4xG6P8Vzo9U7TtW0xP6Is=;
        b=UNQZCZN4WyO5H+nbIM2xzJ/yvXMv0fEbxJ44O511SKm1iSVHfYfNQYut1J5gt8KHik
         xit9VnKphcCm4kEG2t+8HdVh3rgq1sP3Uzdy0Pkw2Gysd2TObyLR+glBuPtP1vXYiK9+
         HvkVii2AOqtVPsXNCctTztbHm7VSIi6Y+8bp+kloKRNDLVEH1x9TiKitQDsra/cblt4o
         2z2osFnh6kgT05H5IhRk0BRA3w0ZJk0DeXJHp5NOss/JX9kDA1I/UsxfCUi3NoR/iX0+
         TuO2qd+fKRsLpkJKosfLmipF05JUVKNeS5lP64cAfqW4bW94opHgGxUMUTekl74dZshz
         GIbg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719781776; x=1720386576;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PuoL+DkjHMZK+HKGVfW5geizHKNkl7XRXi3Bnk+T21k=;
        b=wDwcNi0s19abJYKBAgcOn+v1Nf/9EWY7uy6c+4uFa6TVTfWs+8XnHki67F+GN6z+28
         +bVFwdJwajKCvf0a+zSbr2tUijE2B0bq7jBF/01Dz7Ch018vE31vuOo8SCd1bab2kphg
         kia0g/s2iC+CyOQmBi/MDYa+f5zV0o7g2QDlCgEZnoiCgaSYegkpnRLsXL7hWMHxtglj
         ILoyJm8GDHtsY0DnSLaraPQR+D76GatD1I/CX3Ertw1EuQKgzT/HfU4qmymloB8lIf2+
         rBzHEy96wR7698hWcbdnTSHd6h3qqZ7dAFCKaByREygLtczJsxX4rYvcjhT0PNENlxdM
         4slw==
X-Forwarded-Encrypted: i=2; AJvYcCVGzbQlDv1mIUr3xNX97u64nxnVeQWXFqCfciw5GFfjZtpQNwdkmhqoiJo5W6S4IyFeX0ueU7V7MevX6HXKOFuCTBuqhMPblxOU
X-Gm-Message-State: AOJu0YyUrFYaZDI8vEDofBvDgdzPz7bZqj910RxqyOVyDCfkLbYWkpo0
	2OadVBRJVI5w1wW6q1IWu+DY8/9aIBwGXQpBmHk/shxy0bY3FgdMfGLRu2OAdiQlKsR5F+U=
X-Google-Smtp-Source: AGHT+IH2PJad72E5pcmuXCzl4rTRXACy3Chj32JIll1JS0ISxMyjjo2UAdtBMx1AhOdIvuPtS2ZEPQ==
X-Received: by 2002:ac8:588f:0:b0:446:3fa5:253 with SMTP id d75a77b69052e-44662dbfeefmr51359161cf.22.1719781776064;
        Sun, 30 Jun 2024 14:09:36 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:34f:b0:441:5568:9dea with SMTP id
 d75a77b69052e-446529b3b36ls39791701cf.2.-pod-prod-06-us; Sun, 30 Jun 2024
 14:09:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXwVdWpOcs0CDE+CAWeAWw7IHe3JyOLQm4lojDFIEdtGlQUekG4xFaNMtEv6D1djn+IA1GWrNgI5Z7ChDlRFF95CORLXUpx0PbehlWy
X-Received: by 2002:ac8:5710:0:b0:446:46e9:c9b4 with SMTP id d75a77b69052e-44662decca2mr59390401cf.34.1719781775311;
        Sun, 30 Jun 2024 14:09:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719781775; cv=none;
        d=google.com; s=arc-20160816;
        b=TPhzBIF9HETTwudI95MSPiIGUcmLVCJ3NfHQDsHvPc6wrEuNUN884oycZuihim1XPy
         8aftR1oxziZE/P07gEytftj29zAIhKFVzLBgHfS3+kZUQcYcR8JPOcn90kAZznw9poEH
         aCFRZ0YA7F2DAxjk5myLwtpUCJdBYgguhy+MDr3vfjDXhlWbq6L3L5AQlPjJ/mtTIlJ9
         jJGDZ/K3GaPdI2VvR7dx3aJNcvJILKsUb/9tiQ7N8MusUP4FLq+ySCMyeMSar7Vpbf+O
         EH7GE01PrGCalpwMa8nd21HjIx1U+RR/zn4TRWY3YlkJnYrETyMqkE+RdffJnUS0/kie
         0nqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=Sqqox23i8VTktDCc0EGmMW95exypGAjkFBF26Uu8P6A=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=UL3ugjMlzcNiaHFzdcY3PCA6OnKO5lmc/YlmL1rwS3WhUTtadogCaX0qwTUrS3lJEl
         2mglWm2NICDnQMVmiso7MZKw8OUT0cyoVjZWtIkwEo8CpsVnkfcowmYDcr54/QILU3zG
         9x4eMLFad/mBL0s4js+eAD+zDpdhUFXN5sX8qK9TT3/FxmPpdZRvIEs9kl/UagF0LDUu
         9OQnQUX340/+O3ikiXKFV1oocNNuTK0AmEd8DVvBZ83TgoLEN+A2fjwdK/2ur46WUIPP
         xLUxtWpepGwwu4RZZlN6mtBIv2pKPfeEU4NUe729vD7AaZHnKMPj7ayUN8o5BwqRB21y
         q2IQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-446514a0f86si63958761cf.399.2024.06.30.14.09.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jun 2024 14:09:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-369-p-VrvtDNNIqGOLnlIBqfwg-1; Sun,
 30 Jun 2024 17:09:33 -0400
X-MC-Unique: p-VrvtDNNIqGOLnlIBqfwg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 956CF195608D
	for <blinux-list@gapps.redhat.com>; Sun, 30 Jun 2024 21:09:32 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7ED181955E85; Sun, 30 Jun 2024 21:09:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7C5511955E80
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 21:09:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D6D0E19560B0
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 21:09:31 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-221-YpvyP3z2P762T6gKCoSg8Q-1; Sun,
 30 Jun 2024 17:09:28 -0400
X-MC-Unique: YpvyP3z2P762T6gKCoSg8Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WC1yJ3Qk6z143X
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 17:09:28 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WC1yJ31zxzcbc; Sun, 30 Jun 2024 17:09:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WC1yJ2yTrzcbC
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 17:09:28 -0400 (EDT)
Date: Sun, 30 Jun 2024 17:09:28 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: Fedora 40 workstation status
Message-ID: <99dd9ae2-6af5-f6ee-3387-6aa40862bdc0@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
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

We got it installed and connected to the network somehow.
It turns out initial setup won't run without a mouse attached to the
computer.
Also one or more updates that became available on June 30, 2024 after
upgrading broke dnf on this end to the point it now does a core dump.
I'm going to need to clean this off the system since it can no longer be
upgraded unless rpm is still on this system or some other way is possible
for this to happen.
I tried running the tour and that's totally silent and inaccessible for
me.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

