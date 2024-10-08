Return-Path: <blinux-list+bncBCRNHOFA7YJBBZUZS24AMGQEH2YJXSQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC7E9957DA
	for <lists+blinux-list@lfdr.de>; Tue,  8 Oct 2024 21:50:10 +0200 (CEST)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-e28690bc290sf9016472276.1
        for <lists+blinux-list@lfdr.de>; Tue, 08 Oct 2024 12:50:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728416999; cv=pass;
        d=google.com; s=arc-20240605;
        b=gmE6Qnr75WHZtKE/ptJH9j2n7g2L6754ErsRUqqASICLLsepdCPVY60IiBGjeM8hha
         QXff/v8V7gT3d1kQe3MXlQ1Cg5TjFdqklauE9mCEuyzyqaEYGqfMjn+hxURpK0+TudFG
         h6TSisun3VFYzkTDBX4isJKBvjui94NWmEpYL5PmaNoDVUjO4NyFhNarDzXvmLhV5U3e
         1i6EYFRkRwvg2SO6mHfknJ6st1yjSqazSn2o8lbMsPZt8y7zTUt2LcypEXvwdpz0ROI+
         bCBEu0Nvzy4Xir5WBCV+b3K0KiISXJChjLpk5LzatD8XM1zO30PtDpqlYCqyHhe1CY2Z
         VKJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=I7aH4OXh4iENpjJGOiNx0/o2SwJ1GHYQu4rs8v4H/j8=;
        fh=CCuIC+DO0D1ACEzEUPA6oWiATTda7m+A2UbOOqUgZY8=;
        b=R0WgENEezDMVxWBwFaD4iNiSRqlEGeNE3eZXQndcZMDVU/0blpBofifJu2SnBTfHp8
         74w8YAhyEA0Gs5oICu3x+99iF0Q3PXBx7OZV4uGCuuAKXhIcdtlQ6A+a79Ark+q+dScv
         fVYuZ6oR+ALPHc6RLRWo68+o4PjRouDmYnUkdBXEnONohZxs8v3Meqce4LOIX2mm4a/K
         VE8BIQMGch9aOAcIKCVoU0u9MrioH9p734rlXR+KIEQ7v9QheRJkNO1hfUUHOQwLpBTk
         JbeAroydl2czflQ2i7VtI/2ZgptsCePPfdQr5pjXif/3gkKfsVuGeCMQGzuE7SdZbiMP
         yIQw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=rdm@cfcl.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728416999; x=1729021799;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:message-id
         :subject:date:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I7aH4OXh4iENpjJGOiNx0/o2SwJ1GHYQu4rs8v4H/j8=;
        b=s71DaxKDKpnxlibusPke6opCUyFbsTn4vGvI2vai5gewO2T1bDoU+bSTsCrRxnfKGI
         gy7YfG2gG96uNj+gAgcmN+trWIb3jjZc6KthB/43rDYzmQGMBYHl2TDiQrTVwXvY2IpI
         aeX6M+0WlUeIjB5eVBXBHRz96ccXjm3llRjULUIUO6hs5AI+P/gRTFnqOsY+hmWBvWmw
         aKqdN0ItT9K1Cr47hdK57/cJXIt3smnmvZ1oXuNrBbf4MqSPlBo6yMNKgN/glgakZNr6
         gl9FiHsQFRETtcY1nEQJToeppTXK5bwRjRkBOc2X5IPzkLfmRHp3KMAEpJfwwA31fNMn
         Q0Xg==
X-Forwarded-Encrypted: i=2; AJvYcCV/hI8bajzIukJDnGvqmCVOBMIOBoAWNzUUVk9uZC3Sp9TZB/miBrywSQpeBt5qVI7recKq5w==@lfdr.de
X-Gm-Message-State: AOJu0Yxzig0tVuP+wIw3ZtulGl6WM+fOMLekn8xtkex+qfsSksLIgAMc
	rJ6MuF/Fj3m725AaX0ENlqvTO6NBkeN974tvrD9YaDzb4nxrW3R4q4svCL5OOtY=
X-Google-Smtp-Source: AGHT+IHBw+HyfA2O5xcB404LI0O9OVeTAHFdjj8buzLC4YIXIHEpg7uSEYsHeIh5fxqG5GYgpInxGA==
X-Received: by 2002:a05:6902:2004:b0:e25:cf69:c47e with SMTP id 3f1490d57ef6-e28fe449b63mr275049276.18.1728416999406;
        Tue, 08 Oct 2024 12:49:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:1201:b0:e20:db8:7862 with SMTP id
 3f1490d57ef6-e286fa88527ls2508211276.2.-pod-prod-02-us; Tue, 08 Oct 2024
 12:49:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUezfzAatYqn919iaIb+spAEZoFusnUDHfwcRzM316etTmPVfEPlbjNQ2A5VBWAVd6SPmA223sXy6pcSg==@gapps.redhat.com
X-Received: by 2002:a05:6902:2309:b0:e28:f35c:a342 with SMTP id 3f1490d57ef6-e28fe47a48fmr255736276.31.1728416998309;
        Tue, 08 Oct 2024 12:49:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1728416998; cv=none;
        d=google.com; s=arc-20240605;
        b=lnraYS6SRxKOIwWSdgBi2Hk0APQjbQrRaYg7/w1Vgz7YdkvOw2uZI+Mg71NSAlynQr
         KsyislIk4MvGfMctGdPdgkW5BbKuYDi/wUsKiwhAPHzjuUA8gwKGQPHeHrsnYihXWlt+
         rwaY/X4w2fOGksQKPUROoPnttiMP6385n06KWXNf3hVGXA8mJUi4bZxzN1B6wcnIW6S6
         8VdRQwx3bUnxNngaty9nDoYCYoqCH5/Obj4lTd6N9wDMe3vEVBvtGy2SsTRLObfmIipK
         RxC7gtCBwODAyT0s6X5OiURIRRRTdiJf9/iKBz0ajfXUhAqhTjAeFrZv8m2jSZd7ptxr
         dsxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=b4yPWp+do6el6qeM5v2exe7af9Ny4YBD90KVvi12TiM=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=aPAYQfkZmznNau5hYGUk16Gx1S0Iw4gk7iSuX6bhPcE9/jDYLjA6Fkm96dB7ujdG53
         rPDFUq09mw8M6OfaCQ8LaVd6UivV7sXpYCFCjormHWXTXarJYXLb6cASclku5wTKIg+C
         qeH460jsSCO6vYMT5cG1mhjjPoMLAfHs48iAXp2lLgWA/jmW41tqwY3HxzZSexQ7SaVy
         f8mijfQz+spm2WpvfGAWmGZxNNGEBxhMpoXcBClehwmefo5knjAnxXqWFM5sPsWZNg5z
         C3MBFGjE4KpnO0y8HcB207cE1m7WfTO1M+NQQivIzVsxJdGavQ9JA+YsSuUiQOEO7h5h
         nUqg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=rdm@cfcl.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6cbc7e4109bsi6359516d6.35.2024.10.08.12.49.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 12:49:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of rdm@cfcl.com designates 209.85.214.180 as permitted sender) client-ip=209.85.214.180;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-550-Q7ADHvbBNDqN_Ebfw4y1Gw-1; Tue,
 08 Oct 2024 15:49:56 -0400
X-MC-Unique: Q7ADHvbBNDqN_Ebfw4y1Gw-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CCB531956057
	for <blinux-list@gapps.redhat.com>; Tue,  8 Oct 2024 19:49:55 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C7BB11956052; Tue,  8 Oct 2024 19:49:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C512D19560A3
	for <blinux-list@redhat.com>; Tue,  8 Oct 2024 19:49:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1D9111955EA5
	for <blinux-list@redhat.com>; Tue,  8 Oct 2024 19:49:55 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-15-4xmg81NnOLKjwVcDHD1UoQ-1; Tue, 08 Oct 2024 15:49:52 -0400
X-MC-Unique: 4xmg81NnOLKjwVcDHD1UoQ-1
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-20b6458ee37so70564815ad.1
        for <blinux-list@redhat.com>; Tue, 08 Oct 2024 12:49:52 -0700 (PDT)
X-Received: by 2002:a17:902:d4ca:b0:20c:5533:36d9 with SMTP id d9443c01a7336-20c6377d1e6mr1508945ad.43.1728416991154;
        Tue, 08 Oct 2024 12:49:51 -0700 (PDT)
Received: from smtpclient.apple ([50.54.215.166])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c54056b07sm15124985ad.64.2024.10.08.12.49.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Oct 2024 12:49:50 -0700 (PDT)
From: Rich Morin <rdm@cfcl.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Date: Tue, 8 Oct 2024 12:49:40 -0700
Subject: very portable computer on Kickstarter
Message-Id: <D6A5E4CA-39A0-4AF0-8FD3-381851C39E1E@cfcl.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: cfcl.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rdm@cfcl.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rdm@cfcl.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=rdm@cfcl.com
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

This might be an interesting option.  It's a folding keyboard that includes a CPU, RAM, and SSD. It might be a fairly convenient system to carry.

https://www.tomshardware.com/desktops/mini-pcs/pocket-size-amd-ryzen-pc-in-a-folding-keyboard-hits-kickstarter-hawk-point-portable-has-up-to-10-hours-of-battery-life

https://www.kickstarter.com/projects/1482776406/lunar-2-in-1-foldable-keyboard-and-mini-pc-for-all-your-needs

-r

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

