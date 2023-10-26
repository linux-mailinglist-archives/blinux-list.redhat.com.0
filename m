Return-Path: <blinux-list+bncBC3NDNGRUAMRBVVL5KUQMGQEYAOVI5I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id A28B27D86D8
	for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 18:37:44 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41cba27f8b2sf13420291cf.3
        for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 09:37:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698338263; cv=pass;
        d=google.com; s=arc-20160816;
        b=y1lnEP0H4lXWKeKB7+0aiKte3N/15kcyJTwTDr309dnS1DJP1TeEJ9vCaJaKmXNhLm
         NUBkND9f+H8LB7NflQ/8AbzWe2ds8uBC6lbLpRev2ykEaAhjYHmGt/HoVdcLCdurx254
         0tSHbh0OzlaQkOg87dIRhOHZCloM1QhuDbeMvliGs7VswE2rrKO6j9K8hlqQrEYOQj/j
         alHPi86Mox4P0aPWkN5IBWG+GgfHOOOgFINAg/YrZW9y+nGfEOAe0NyU+R232rRGTTjn
         CGVZMYuzjpjU1mpj4f2bumie+SRHq1c1jXc72/jVZSueJlyVTBmMWxu5k86dygfpnkEi
         hJCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=RdErd8TgMNfhJuLtCEFcpPlxd421tsR6WEm5gM+P5Ts=;
        fh=KO6uEEYi8ES6POT/nQXMbozMU5ruwoCoOuAms9FIyqc=;
        b=HltuANfVLFxmmluuxK9bxAGUnPCjOkEqF03GhyBuPhgaWadra8vLgk60FbRrlqiExK
         EiKaSz9V4b+I9XiwImRIbCwJ1ZGd9bm4NWepJ9hdxjJ9TB713a3iPlX/l9Jg5O3tm778
         Iz3E8cImX4TojH1YZAs0hFlmnDej8B4A5cR0u27NRkM/yN6t4FnIxOcedZdW5QR8+x1i
         49lbgXbZcnnKdVSN/mh5GU5WETIFwx8cnylhZg5/sQoZXWXYGtaJ/KCQTKMwo/Z7BcKf
         TX1bvlgO1mR/9CjI4d8qdmBMO5Qmf7VOCaDlLoeZaU3NGtIwtJ1l3z/YoeZIh+mrYL6B
         Y0Qg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698338263; x=1698943063;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RdErd8TgMNfhJuLtCEFcpPlxd421tsR6WEm5gM+P5Ts=;
        b=bCS++DKdljk7Bib6QdH8aWlO3VsTZE6yg0S+PeDZK7VknbedRJMRcRUcYrKkTH4S6w
         Hgrk9XJfqJAQPpBGB2NQP/SSHmWUpX9YJzPf/P4SuePp9+8khVrn87Tq3T2wXpkEZhCu
         UxPewJwtt1oSo8UZW26LimymxQE+e6Eh/67r/+eQXmofgWPLIvVdJZi28O5Ix8+gqGrP
         /nlf8q5+A10j2NZpZg4P9h3NZ66p8IdLvVWe0FqK9DfE0UQKyITDjn4q1cbhtLO7Mcu8
         n/ORF9DJbitZf0U41JgwyqYenE/ecgg1afB9Pfbwaz06ri6BEY0DYY1QAEjU0yX8WKLG
         Db8w==
X-Gm-Message-State: AOJu0YxWGjV2o6sqMVoHP0D/eTb22uvDBauG5GDXDiZ78ERbVfFXIWpX
	S3W4HVVGP12/psqtrGNdJwiWqw==
X-Google-Smtp-Source: AGHT+IHy0aBnxZnxdwHHsYPDBiKKz01+emvwVfyh/W47Sg961TMTECtNVUMItNlM3dfuX4INBH4ohw==
X-Received: by 2002:ac8:5e4e:0:b0:41e:3c42:bbff with SMTP id i14-20020ac85e4e000000b0041e3c42bbffmr52954qtx.49.1698338263053;
        Thu, 26 Oct 2023 09:37:43 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7ed3:0:b0:40b:404b:aeb3 with SMTP id x19-20020ac87ed3000000b0040b404baeb3ls149492qtj.0.-pod-prod-08-us;
 Thu, 26 Oct 2023 09:37:42 -0700 (PDT)
X-Received: by 2002:a05:622a:8d:b0:41e:24d9:596f with SMTP id o13-20020a05622a008d00b0041e24d9596fmr67209qtw.44.1698338262256;
        Thu, 26 Oct 2023 09:37:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698338262; cv=none;
        d=google.com; s=arc-20160816;
        b=SvzIgiHBDx6X6YYzWnZFe2Z46H+xHQvLBNYUQmucbicxFN7I+XhInZDHSwgHcAOBPd
         3KvagGzym/9SNq876NOQCwWbT2rOa4iw15Y/lPeIvFV7QcENv741SXZsyJIbp3g1is/m
         nHtLEQF5b2FFsvxNGOLUqTqW+KxMSsa5bgFfNlgaf4FWV13HoswHDm0fDSs9P3JqrmGc
         dn3ax6qYqR91TYed6RDPBhp7rwwCg+VS9TJROsz9avGrH6n83ldEgxmIRxvAfjUge6TV
         QSgEK3HOvd2ERkVYm/XSSg4WjHslPzT8xK/FwSef4iVaMcTkF14+sjOZKXJv/hroh5KZ
         39mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=RsSYcmw0NDDPtIuR/tAGVdhj/htDzW2Lp7F+qyF2++k=;
        fh=KO6uEEYi8ES6POT/nQXMbozMU5ruwoCoOuAms9FIyqc=;
        b=tIhe4caoqf0zWR9kQmIKo8Rvh5RRt3qTkD4HlDal31GGAd68QT5KULpBnUF8pDbW3C
         eTvcECuqXIDtfE2NamtO5AUIb2+flimoHsND6HtWkovzuqpt8IaD6Bb7AD5pwdbXyZ/7
         rCZVt394MTPOHiP/ElVYOYA6R02w8ofl90V2AQVhSc/MI2+PwyfmTPtF1ne+4H/Uy3hC
         JhOisLRDqsxEz2xoWcFV7kJfcZ7EjGngUSbqv+AQpqGaI+XGdH9DPrhk0uK9kKbj8SQ4
         1AQyFzouOBXEkv0iwwaGAKNERqMtUp/5fo3sblYz+Z+x15QkX27Ah7xhl9ZZeY2Ay2z8
         NsNg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id c2-20020ac87dc2000000b0041b83912a5dsi9511330qte.187.2023.10.26.09.37.41
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 09:37:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.27 as permitted sender) client-ip=66.111.4.27;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-554-o-2MSi9AOmmIX3O2UMNOUA-1; Thu,
 26 Oct 2023 12:37:40 -0400
X-MC-Unique: o-2MSi9AOmmIX3O2UMNOUA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77B86280BC41
	for <blinux-list@gapps.redhat.com>; Thu, 26 Oct 2023 16:37:40 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 74CD11C060B0; Thu, 26 Oct 2023 16:37:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D8561C060AE
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 16:37:40 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 48A83811E7B
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 16:37:40 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-157-cevwKu2yNqSjafYb1fq6BA-1; Thu, 26 Oct 2023 12:37:38 -0400
X-MC-Unique: cevwKu2yNqSjafYb1fq6BA-1
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailout.nyi.internal (Postfix) with ESMTP id BE5F95C0259;
	Thu, 26 Oct 2023 12:37:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute7.internal (MEProxy); Thu, 26 Oct 2023 12:37:37 -0400
X-ME-Sender: <xms:0ZU6ZaJw6xbGfzPc9VEhpJ8xar9P5T40dgVKKoDNUpd-4I5wVwBWhA>
    <xme:0ZU6ZSKdvuI5HFSgW9AUkyjYRBgtvU4ztH9G7deVcWU1mwsRigxVJ0NDkZktBnObG
    b6tOmwJjiAUDjDdzCU>
X-ME-Received: <xmr:0ZU6ZavLDRvjyR3wLs4zp_L5qT8C_1dtJ15eon-09KuRCSmL6aiEGUx6z02Gp5Pr2EXOtpo6Z6bDkfodTswLelMU6UwbiAUyVQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrledvgddutddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:0ZU6ZfbFYjovehiyTA5V-PfIj0Wy5PFqIEK0ql-VTQtAGsX4aUaa0w>
    <xmx:0ZU6ZRYS9ajfuSaceDWmW71ztEJhNLC9JwaszF_Z3MbiRDMOceiUrw>
    <xmx:0ZU6ZbATx1-zqLscs1XkClUOO_wF7QzxANt0f1fFMBEvz7g7OcrFWQ>
    <xmx:0ZU6ZQxalGH1Vcix7DnUGEd0A4If_OtZAkz-5SRFt7qLHKabFBIYbQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 26 Oct 2023 12:37:36 -0400 (EDT)
Date: Thu, 26 Oct 2023 09:37:33 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Didier Spaier <didier@slint.fr>, blinux-list@redhat.com
Subject: Re: seeking a sftp site to test a problem?
In-Reply-To: <Pine.LNX.4.64.2310261209260.3065297@users.shellworld.net>
Message-ID: <9857b30e-cba4-bf77-66bb-20471e31b1a1@hubert-humphrey.com>
References: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net> <e5b85119-9e37-439a-aa0d-d77a0a3d970b@slint.fr> <Pine.LNX.4.64.2310261209260.3065297@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 66.111.4.27 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

OK Didier, Shellworld has been around since at lest 2002, created by another 
blind user. Shellworld is under another owner now, running ubuntu. Its original 
owner Ken Scott was on a podcast explaining the service. It was surpirsing your 
search didn't find it. Also, reguarding putty, when I have used a windows 
machine, I had much better luck useing teratterm.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

